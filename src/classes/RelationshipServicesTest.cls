@isTest
public class RelationshipServicesTest {
    static String CONST_CONTACT = 'Contact';
    static  String CONST_SPOUSE = 'Spouse_Partner';
    static  String CONST_Member = 'Member';
    static  String CONST_Relationship = 'Relationship';
    static  String CONST_Business = 'Business';
    static String CONST_Account = 'Account';
    static Id memberRecordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_Member, CONST_CONTACT).Id;
    static Id spouse_partnerConRTId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_SPOUSE, CONST_CONTACT).Id;
    static Id businessAffRTId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_Business, 'Account_Affiliation__c').Id;
    static Id businessAccRecordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_Business, CONST_Account).Id;
    static Id relationshipAccRecordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_Relationship, CONST_Account).Id;
    static Relationship__c spouse_PartnerRel;
    static Relationship__c memberRel;
    static Account testHouseholdAccount;
    static Account testBusinessAccount;
    static Contact testMemberContact;
    static Contact testSpousePartnerContact;
    static Account_Affiliation__c testUpdateAccAff;
    static Account_Affiliation__c testInsertMemberAccAff;
    
    public static void setup(){      
        testHouseholdAccount = TestServices.createAccount('Household');
        testHouseholdAccount.Type = CONST_Relationship;
        testHouseholdAccount.RecordTypeId = relationshipAccRecordTypeId;
        insert testHouseholdAccount;
        testBusinessAccount = TestServices.createAccount('Business');
        testBusinessAccount.Type = 'Business';
        testBusinessAccount.RecordTypeId = businessAccRecordTypeId;
        insert testBusinessAccount;
        testMemberContact = TestServices.createContact(testBusinessAccount.Id);
        testMemberContact.RecordTypeId = memberRecordTypeId;
        insert testMemberContact; 
        testSpousePartnerContact = TestServices.createContact(testHouseholdAccount.Id);
        testSpousePartnerContact.RecordTypeId = spouse_partnerConRTId;
        insert testSpousePartnerContact;
        
        memberRel = TestServices.createRelationship(testMemberContact.Id, testHouseholdAccount.Id,
                                                    'Member', true, true);
        
    }
    
    public static testMethod void testUpdateRelationship(){
        setup();
        testUpdateAccAff = TestServices.createAccountAffiliation(testBusinessAccount.Id, testSpousePartnerContact.Id,
                                                                 true, businessAffRTId, true);
        spouse_PartnerRel = TestServices.createRelationship(testSpousePartnerContact.Id, testHouseholdAccount.Id,
                                                            'Spouse/Partner', true, true);
        spouse_PartnerRel.Is_Active__c = false;
        Test.startTest();
        update spouse_PartnerRel;
        Test.stopTest();
        Account_Affiliation__c updatedTestAccAff = [Select id, IsActive__c from Account_Affiliation__c where id =:testUpdateAccAff.id];
        //System.assertEquals(false, updatedTestAccAff.IsActive__c);
    }
    public static testMethod void testInsertRelationship(){
        setup();
        /*testInsertMemberAccAff = TestServices.createAccountAffiliation(testBusinessAccount.Id, testMemberContact.Id,
                                                                       true, businessAffRTId, true);*/
        Test.startTest();
        spouse_PartnerRel = TestServices.createRelationship(testSpousePartnerContact.Id, testHouseholdAccount.Id,
                                                            'Spouse/Partner', true, true);
        Test.stopTest();
        List<Account_Affiliation__c> totalAccAff = [Select id, account__c from Account_Affiliation__c where account__c =:testBusinessAccount.id];
        //System.assertEquals(2, totalAccAff.size());
    }
}