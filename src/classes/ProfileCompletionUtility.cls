public class ProfileCompletionUtility {

	public static void ProfileCompletionUtility(Map<Id, String> updatedCriteria) {
		Profile_Completion_Criteria__c updateCompletion;
		Profile_Completion_Criteria__c criteria = Profile_Completion_Criteria__c.getValues('Initial Criteria');
		Map<String, Schema.SObjectField> criteriaFields = Schema.SObjectType.Profile_Completion_Criteria__c.fields.getMap();
		String ProfileQuery = 'Select ';

		Map<Id, Contact_Profile_Completion__c> existingPercentages = new Map<Id, Contact_Profile_Completion__c> ();
		List<Contact_Profile_Completion__c> newPercentages = new List<Contact_Profile_Completion__c> ();
		Map<Id, Contact_Profile_Completion__c> updatedPercentages = new Map<Id, Contact_Profile_Completion__c> ();

		integer x = 1;

		for (String fieldName : criteriaFields.keySet()) {
			if (criteriaFields.get(fieldName).getDescribe().isCustom()) {
				ProfileQuery += fieldName;
				if (x<criteriaFields.keySet().size()) {
					ProfileQuery += + ', ';
				}
			}
			x++;
		}

		String whereString = '(';

		for (Id s : updatedCriteria.keySet()) {
			whereString += '\'' + String.valueOf(s) + '\',';
		}

		whereString = whereString.removeEnd(',');

		whereString += ')';

		Try {
			ProfileQuery += ', Contact__c From Contact_Profile_Completion__c where Contact__c IN ' + whereString;
			for (Contact_Profile_Completion__c contProfile : Database.query(ProfileQuery)) {
				existingPercentages.put(contProfile.contact__c, contProfile);
			}
			Contact_Profile_Completion__c contProfile;

			for (Id i : updatedCriteria.keySet()) {
				Boolean newRecord = true;
				if (existingPercentages.containsKey(i)) {
					newRecord = false;
					contProfile = existingPercentages.get(i);
				} else {
					contProfile = new Contact_Profile_Completion__c();
					contProfile.contact__c = i;
				}

				updateCompletion = (Profile_Completion_Criteria__c) JSON.deserializeStrict(updatedCriteria.get(i), Profile_Completion_Criteria__c.class);
				System.debug('**** Updated Completion: ' + updateCompletion);
				for (String fieldName : criteriaFields.keySet()) {
					if (criteriaFields.get(fieldName).getDescribe().isCustom()) {
						Decimal percentCriteria = (Decimal) criteria.get(fieldName);
						Decimal percentComplete = (Decimal) updateCompletion.get(fieldName);
						if (percentComplete >= percentCriteria) {
							contProfile.put(fieldName, 100);
						} else if (percentComplete<percentCriteria && !(percentCriteria< 0)) {
							contProfile.put(fieldName, (percentComplete / percentCriteria));
						}
					}
				}
				if (newRecord) {
					newPercentages.add(contProfile);
				} else {
					updatedPercentages.put(contProfile.Id, contProfile);
				}

			}

			if (updatedPercentages.size()> 0) {
				update updatedPercentages.values();
			}
			if (newPercentages.size()> 0) {
				insert newPercentages;
			}

		} catch(Exception e) {
			System.debug(e.getMessage());
			System.debug(e.getLineNumber());
		}
	}
}