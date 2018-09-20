@isTest
public class CASettingTriggerTest {
    
    static final String CONST_PARTNER_USER = Label.Partner_User_Custom;
    static final String CONST_CHAPTER = 'Chapter';
    static final String CONST_ACCOUNT = 'Account';
    
    static testMethod void testgivenUser_WhenInserted_thenCAShareContact() {
        
        //test data setup
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount.id, oContact.id);
        oAccountAffiliation.IsActive__c = true;
        insert oAccountAffiliation;
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Contact oContact1 = TestServices.createContact(oAccount.id);
        insert oContact1;
        Opportunity oOpportunity1 = TestServices.createOpp(oAccount.Id, false);
        oOpportunity1.stageName = 'In Progress';
        oOpportunity1.KGRenewal__Contact__c = oContact1.Id;
        insert oOpportunity1;
        
        List<ContactShare> lstContactShare1 = [SELECT Id, UserOrGroupId, ContactId, RowCause,
                                               ContactAccessLevel FROM ContactShare WHERE UserOrGroupId =: oUser.id];      
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser.id, true);
        insert oCASetting;
        
        Test.startTest();
	        ChapterAdditionalUserAccessBatch oChapterAdditionalUserAccessBatch = new ChapterAdditionalUserAccessBatch();
	        database.executebatch(oChapterAdditionalUserAccessBatch);
        Test.stopTest();
        
        List<ContactShare> lstContactShare = [SELECT Id, UserOrGroupId, ContactId, RowCause,
                                              ContactAccessLevel FROM ContactShare WHERE UserOrGroupId =: oUser.id];      
        System.assertEquals(1, lstContactShare.size());
        
        List<AccountShare> lstAccountShare = [SELECT Id, UserOrGroupId, AccountId, RowCause FROM AccountShare WHERE UserOrGroupId =: oUser.id];      
        System.assertEquals(1, lstAccountShare.size());
        
        List<OpportunityShare> lstOpportunityShare = [SELECT Id, UserOrGroupId, OpportunityId, RowCause 
        											  FROM OpportunityShare 
        											  WHERE UserOrGroupId =: oUser.id AND OpportunityId =: oOpportunity1.Id];     
 
        System.assertEquals(1, lstOpportunityShare.size());
        
         
    }
    
    static testMethod void testgivenUser_WhenInserted_thenCAShareContactMultiple() {
        
        //test data setup
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount.id, oContact.id);
        oAccountAffiliation.IsActive__c = true;
        insert oAccountAffiliation;
        
        Contact oContactNew = TestServices.createContact(null);
        insert oContactNew;
        
        Opportunity oOpportunity1 = TestServices.createOpp(oAccount.Id, false);
        oOpportunity1.stageName = 'In Progress';
        oOpportunity1.KGRenewal__Contact__c = oContact.Id;
        insert oOpportunity1;
        
        Account_Affiliation__c oAccountAffiliationNew = TestServices.createAccountAffiliation(oAccount.id, oContactNew.id);
        oAccountAffiliationNew.IsActive__c = true;
        insert oAccountAffiliationNew;
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        insert oAccount1;
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        //oUser1.UserName = 'aaa@bbb.com';
        //oUser1.CommunityNickname = 'user11';
        insert oUser1;
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        oCASetting.Primary__c = true;
        oCASetting.Role__c = 'Chapter Administrator';
        Test.startTest();
        insert oCASetting;
        Test.stopTest();
        
        List<ContactShare> lstContactShare = [SELECT Id, UserOrGroupId, ContactId, RowCause,
                                              ContactAccessLevel FROM ContactShare WHERE UserOrGroupId =: oUser1.id];      
        System.assertEquals(2, lstContactShare.size());
        
        List<AccountShare> lstAccountShare = [SELECT Id, UserOrGroupId, AccountId, RowCause FROM AccountShare WHERE UserOrGroupId =: oUser1.id];      
        system.debug('lstAccountShare::' + lstAccountShare);
        
        
        System.assertEquals(1, lstAccountShare.size());
        
    }
    
    static testMethod void testgivenUser_WhenDeletedCASetting_thenDeleteShare() {
        
        //test data setup
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Start_Date__c = system.today();
        oAccount.Type = 'Chapter';
        insert oAccount;
        
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        Opportunity oOpportunity1 = TestServices.createOpp(oAccount.Id, false);
        oOpportunity1.stageName = 'In Progress';
        oOpportunity1.KGRenewal__Contact__c = oContact.Id;
        insert oOpportunity1;
        
        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount.id, oContact.id);
        oAccountAffiliation.IsActive__c = true;
        insert oAccountAffiliation;
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        insert oAccount1;
        
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        //oUser1.UserName = 'aaa@bbb.com';
        //oUser1.CommunityNickname = 'user11';
        insert oUser1;    
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        insert oCASetting;
        
        Test.startTest();
        oCASetting.isActive__c = false;
        oCASetting.Primary__c = false;
        update oCASetting;
        Test.stopTest();
        
        List<ContactShare> lstContactShare = [SELECT Id, UserOrGroupId, ContactId, RowCause,
                                              ContactAccessLevel FROM ContactShare WHERE UserOrGroupId =: oUser1.id];      
        system.assertEquals(0, lstContactShare.size());
        
        List<AccountShare> lstAccountShare = [SELECT Id, UserOrGroupId, AccountId, RowCause FROM AccountShare WHERE UserOrGroupId =: oUser1.id];      
        system.assertEquals(0, lstAccountShare.size());
        
    }
    static testMethod void testgivenUser_WhenDeletedCASetting() {
        
        //test data setup
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        Opportunity oOpportunity1 = TestServices.createOpp(oAccount.Id, false);
        oOpportunity1.stageName = 'In Progress';
        oOpportunity1.KGRenewal__Contact__c = oContact.Id;
        insert oOpportunity1;
        
        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount.id, oContact.id);
        oAccountAffiliation.IsActive__c = true;
        insert oAccountAffiliation;
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        insert oAccount1;
        
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        //oUser1.UserName = 'aaa@bbb.com';
        //oUser1.CommunityNickname = 'user11';
        insert oUser1;    
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        insert oCASetting;
        
        Test.startTest();
        oCASetting.isActive__c = false;
        delete oCASetting;
        Test.stopTest();
        
        List<ContactShare> lstContactShare = [SELECT Id, UserOrGroupId, ContactId, RowCause,
                                              ContactAccessLevel FROM ContactShare WHERE UserOrGroupId =: oUser1.id];      
        system.assertEquals(0, lstContactShare.size());
        
        List<AccountShare> lstAccountShare = [SELECT Id, UserOrGroupId, AccountId, RowCause FROM AccountShare WHERE UserOrGroupId =: oUser1.id];      
        system.assertEquals(0, lstAccountShare.size());
        
    }
    static testMethod void testgivenExistingPrimarCASetting_WhenInsertedDuplicateCASettingEntered_thenError() {
        
        //test data setup
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        Opportunity oOpportunity1 = TestServices.createOpp(oAccount.Id, false);
        oOpportunity1.stageName = 'In Progress';
        oOpportunity1.KGRenewal__Contact__c = oContact.Id;
        insert oOpportunity1;
        
        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount.id, oContact.id);
        oAccountAffiliation.IsActive__c = true;
        insert oAccountAffiliation;
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        insert oAccount1;
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        //oUser1.UserName = 'aaa@bbb.com';
        //oUser1.CommunityNickname = 'user11';
        insert oUser1;
        
        List<ContactShare> lstContactShare1 = [SELECT Id, UserOrGroupId, ContactId, RowCause,
                                               ContactAccessLevel FROM ContactShare WHERE UserOrGroupId =: oUser1.id];      
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        oCASetting.Chapter__c = oAccount.Id;
        insert oCASetting;
        System.assertEquals(true, [Select Primary__c from CA_Setting__c where id=:oCASetting.id][0].Primary__c,
                            'As no existing CA Setting per Role/Chapter, Primary should be set to true');
        CA_Setting__c duplicatePrimaryCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        duplicatePrimaryCASetting.Primary__c = true;
        Test.startTest();
        try{
            insert duplicatePrimaryCASetting;
            system.assert(false, 'Exception should have been thrown');
        }catch(DmlException dEx){
            String errorMessage = dEx.getMessage();
            System.assert(errorMessage.contains(Label.Only_One_Primary_CA_Setting),
                          'Only_One_Primary_CA_Setting exception should have been thrown');
        }
        Test.stopTest();
    }
    static testMethod void testgivenLeadAndCAForSameChapter_WhenCAChapterUpdated_thenLeadUpdated() {
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount.id, oContact.id);
        oAccountAffiliation.IsActive__c = true;
        insert oAccountAffiliation;
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        
        oAccount1.RecordTypeId = recordTypeId;
        oAccount1.Chapter_Network_Exception__c = true;
        oAccount1.Status__c ='Active';
        oAccount1.Type = 'Chapter';
        insert oAccount1;
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        insert oUser1;
        
        List<ContactShare> lstContactShare1 = [SELECT Id, UserOrGroupId, ContactId, RowCause,
                                               ContactAccessLevel FROM ContactShare WHERE UserOrGroupId =: oUser1.id];      
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        oCASetting.Role__c = CASettingServices.CONST_CHAP_CHAIR;
        insert oCASetting;
        Lead testLead = TestServices.createLead('Test Lead', 'New', oAccount1.Id, false);
        testLead.Country = 'Algeria';
        testLead.State = '';
        insert testLead;
        Test.startTest();
        oCASetting.Chapter__c = oAccount1.id;
        update oCASetting;
        Test.stopTest();
        Lead updatedLead = [Select Chpter_Chair__c from Lead where id =: testLead.id limit 1];
        System.assertEquals(updatedLead.Chpter_Chair__c, oUser1.id);
    }

    static testMethod void SyncAccAff_CASettingInsert() {
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        
        oAccount1.RecordTypeId = recordTypeId;
        oAccount1.Chapter_Network_Exception__c = true;
        oAccount1.Status__c ='Active';
        oAccount1.Type = 'Chapter';
        insert oAccount1;
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        insert oUser1;
        
        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount1.id, oContact.id);
        oAccountAffiliation.IsActive__c = false;
        oAccountAffiliation.Is_Primary__c = true;
        oAccountAffiliation.Start_Date__c = Date.today() - 1;
        oAccountAffiliation.End_Date__c = Date.today();
        oAccountAffiliation.Reason_for_Leaving__c = Account_Affiliation__c.Reason_for_Leaving__c.getDescribe()
                                                                                                .getPicklistValues()[0]
                                                                                                .getValue();
        insert oAccountAffiliation;

        Test.startTest();
            CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
            oCASetting.Role__c = CASettingServices.CONST_CHAP_CHAIR;
            oCASetting.Chapter__c = oAccount1.id;
            insert oCASetting;
        Test.stopTest();

        Account_Affiliation__c updatedAccAff = [Select Chapter_Chair__c from Account_Affiliation__c where id =: oAccountAffiliation.id limit 1];
        System.assertEquals(updatedAccAff.Chapter_Chair__c, oUser1.id);
    }

    static testMethod void SyncAccAff_CASettingUpdate() {
        Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        
        oAccount1.RecordTypeId = recordTypeId;
        oAccount1.Chapter_Network_Exception__c = true;
        oAccount1.Status__c ='Active';
        oAccount1.Type = 'Chapter';
        insert oAccount1;
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        insert oUser1;
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        oCASetting.Role__c = CASettingServices.CONST_CHAP_CHAIR;
        oCASetting.Chapter__c = oAccount1.id;
        insert oCASetting;

        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount1.id, oContact.id);
        oAccountAffiliation.IsActive__c = false;
        oAccountAffiliation.Is_Primary__c = true;
        oAccountAffiliation.Start_Date__c = Date.today() - 1;
        oAccountAffiliation.End_Date__c = Date.today();
        oAccountAffiliation.Reason_for_Leaving__c = Account_Affiliation__c.Reason_for_Leaving__c.getDescribe()
                                                                                                .getPicklistValues()[0]
                                                                                                .getValue();
        insert oAccountAffiliation;

        Test.startTest();
            oCASetting.Role__c = CASettingServices.CONST_CHAP_ADMIN;
            update oCASetting;
        Test.stopTest();

        Account_Affiliation__c updatedAccAff = [Select Chapter_Administrator__c from Account_Affiliation__c where id =: oAccountAffiliation.id limit 1];
        System.assertEquals(updatedAccAff.Chapter_Administrator__c, oUser1.id);
    }
    
    static testMethod void testProperties() {
    	Id recordTypeId = RecordTypeServices.getRecordTypeByDeveloperName(CONST_CHAPTER, CONST_ACCOUNT).Id;
        Account mockRegion = TestServices.createAccount('Test Region Chapter');
        mockRegion.Type = 'Region';
        mockRegion.RecordTypeId = recordTypeId;
        mockRegion.Start_Date__c = system.today();
        insert mockRegion;
        
        Account oAccount = TestServices.createAccount('Test-Account');
        oAccount.ParentId = mockRegion.Id;
        oAccount.RecordTypeId = recordTypeId;
        oAccount.Type = 'Chapter';
        oAccount.Start_Date__c = system.today();
        insert oAccount;
        Contact oContact = TestServices.createContact(oAccount.id);
        insert oContact;
        
        
        Id profileId = [SELECT id FROM Profile WHERE Name =: CONST_PARTNER_USER].id;
        User oUser = TestServices.createPartnerCommunityUser(oContact.id, profileId);
        insert oUser;
        
        Account oAccount1 = TestServices.createAccount('Test-Account1');
        
        oAccount1.RecordTypeId = recordTypeId;
        oAccount1.Chapter_Network_Exception__c = true;
        oAccount1.Status__c ='Active';
        oAccount1.Type = 'Chapter';
        insert oAccount1;
        Contact oContact1 = TestServices.createContact(oAccount1.id);
        insert oContact1;
        
        User oUser1 = TestServices.createPartnerCommunityUser(oContact1.id, profileId);
        insert oUser1;
        
        CA_Setting__c oCASetting = TestServices.createCASetting(oAccount.id, oUser1.id, true);
        oCASetting.Role__c = CASettingServices.CONST_CHAP_CHAIR;
        oCASetting.Chapter__c = oAccount1.id;
        insert oCASetting;

        Account_Affiliation__c oAccountAffiliation = TestServices.createAccountAffiliation(oAccount1.id, oContact.id);
        oAccountAffiliation.IsActive__c = false;
        oAccountAffiliation.Is_Primary__c = true;
        oAccountAffiliation.Start_Date__c = Date.today() - 1;
        oAccountAffiliation.End_Date__c = Date.today();
        oAccountAffiliation.Reason_for_Leaving__c = Account_Affiliation__c.Reason_for_Leaving__c.getDescribe()
                                                                                                .getPicklistValues()[0]
                                                                                                .getValue();
        insert oAccountAffiliation;
        String testStr;
        
        Test.startTest();
        	testStr = CASettingServices.CONST_SHARING_METHOD;
        	testStr = CASettingServices.CONST_CHAP_CHAIR;
        	testStr = CASettingServices.CONST_CHAP_MEM_OFF;
        	testStr = CASettingServices.CONST_CHAP_ADMIN;
        	testStr = CASettingServices.CONST_PEDNING;
        Test.stopTest();
    }
}