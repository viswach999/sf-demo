@isTest
public with sharing class SetProductServicesTest {

	@TestSetup static void Setup() {
		Map<String, RecordTypeInfo> recordTypeLookup = RecordTypeServices.getRecordType('Account');
		ID standardPriceBookId = Test.getStandardPricebookId();

		List<Account> listAccount = new List<Account> ();

		Account testAcc = (Account) sObjectFactory.build(Account.sObjectType);
		testAcc.Type = 'Chapter';
		testAcc.RecordTypeId = recordTypeLookup.get('Chapter').getRecordTypeId();

		Account testHouseholdAccount1 = TestServices.createAccount('Household');
		testHouseholdAccount1.Type = 'Relationship';
		testHouseholdAccount1.RecordTypeId = RecordTypeServices.getRecordTypeByDeveloperName('Relationship', 'Account').Id;

		Account testHouseholdAccount2 = TestServices.createAccount('Household');
		testHouseholdAccount2.Type = 'Relationship';
		testHouseholdAccount2.RecordTypeId = RecordTypeServices.getRecordTypeByDeveloperName('Relationship', 'Account').Id;

		listAccount.add(testAcc);
		listAccount.add(testHouseholdAccount1);
		listAccount.add(testHouseholdAccount2);

		insert listAccount;

		List<Contact> listContact = new List<Contact> ();

		Contact testCon = (Contact) sObjectFactory.build(Contact.sObjectType);
		listContact.add(testCon);

		testCon = (Contact) sObjectFactory.build(Contact.sObjectType);
		listContact.add(testCon);

		insert listContact;

		Opportunity testOpp = (Opportunity) sObjectFactory.build(Opportunity.sObjectType);
		testOpp.AccountId = testAcc.Id;
		testOpp.KGRenewal__Contact__c = listContact[0].Id;
		testOpp.Pricebook2Id = standardPriceBookId;
		insert testOpp;

		List<Account_Affiliation__c> accfList = new List<Account_Affiliation__c>();

		Account_Affiliation__c aa = new Account_Affiliation__c();
		aa.Contact__c = testCon.Id;
		aa.Account__c = testAcc.Id;
		aa.Is_Primary__c = true;
		aa.IsActive__c = true;
		aa.Start_Date__c = System.today();	
		accfList.add(aa);

		aa = new Account_Affiliation__c(Account__c = testAcc.Id, Contact__c = listContact[0].Id, Start_Date__c = Date.today(), IsActive__c = true, Is_Primary__c = true, Transfer_Flag__c = 'Renewal Transition');

		accfList.add(aa);

		insert accfList;

		TestServices.createRelationship(listContact[0].Id, testHouseholdAccount1.Id, 'Member', true, true);
		TestServices.createRelationship(listContact[1].Id, testHouseholdAccount2.Id, 'Spouse/Partner', true, true);

		List<Product2> testProducts = new List<Product2> ();

		Product2 p = new Product2();

		p.Name = 'Test Product 1';
		p.Product_Type__c = 'Primary';
		p.Family = 'Chapter Dues';
		p.Account__c = testAcc.Id;
		p.IsActive = true;

		testProducts.add(p);

		for (integer x = 0; x <= 8; x++) {
			p = new Product2();
			p.Name = 'Test Product' + x;
			p.YPO_Universal_Member_Benefit__c = true;
			p.IsActive = true;
			testProducts.add(p);
		}

		insert testProducts;

		List<PriceBookEntry> PBE = new List<PriceBookEntry> ();

		for (Product2 prod : testProducts) {
			PBE.add(new PriceBookEntry(Product2Id = prod.id, PriceBook2Id = standardPriceBookId, isActive = true, UnitPrice = 1.0));
		}

		insert PBE;

		List<OpportunityLineItem> opptyLines = (List<OpportunityLineItem>) SObjectFactory.build(10, OpportunityLineItem.sObjectType);

		integer x = 0;
		for (OpportunityLineItem opptyLine : opptyLines) {
			if (PBE[x] != null) {
				opptyLine.PriceBookEntryId = PBE[x].id;
				opptyLine.OpportunityId = testOpp.id;
				opptyLine.Quantity = 1;
				opptyLine.TotalPrice = x + 100;
			}
			x++;
		}

		insert opptyLines;
	}

	static testmethod void deleteProducts_success() {
		List<Opportunity> testOpp = new List<Opportunity> ([Select Id from Opportunity]);
		System.assertEquals(1, testOpp.size());
		List<OpportunityLineItem> allLine = new List<OpportunityLineItem> ([Select Id from OpportunityLineItem where OpportunityId = :testOpp[0].id]);
		System.assertEquals(10, allLine.size());
		SetProductServices setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.deleteCurrentProducts(testOpp);
		setProdSer.saveOpp();
		List<OpportunityLineItem> allLineN = new List<OpportunityLineItem> ([Select Id from OpportunityLineItem where OpportunityId = :testOpp[0].id]);
		System.assertEquals(0, allLineN.size(), 'Lines not Inserted Properly');
		SetProductServices.createErrorLog(testOpp[0].id, 'This is test Error');
	}

	static testmethod void prospectQ4() {
		List<Opportunity> testOpp = new List<Opportunity> ([Select Id, Fiscal_Date_Start__c, Q4_Date_Testing__c from Opportunity]);
		System.assertEquals(1, testOpp.size());
		testOpp[0].Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testOpp[0].Q4_Date_Testing__c = Date.newInstance(2017, 05, 01);
		update testOpp;

		Contact testContact = [Select Id from Contact Limit 1];
		testContact.Membership_Status__c = 'Prospect';
		testContact.MailingCountry = 'United States';
		testContact.Address1_Type__C = 'Home';
		testContact.Tier_Number__c = '1';
		update testContact;

		List<Product2> testProds = new List<Product2> ([Select Id, Tier_Number__c, Fiscal_Date_Start__c, Country__c, Family from Product2]);
		System.assertEquals(10, testProds.size());
		testProds[0].Fiscal_Date_Start__c = Date.newInstance(2018, 07, 01);
		testProds[0].Family = 'Annual Dues';
		testProds[0].Tier_Number__c = '1';

		testProds[1].Fiscal_Date_Start__c = Date.newInstance(2018, 07, 01);
		testProds[1].Country__c = 'United States';
		testProds[1].Tier_Number__c = '1';

		update testProds;

		List<OpportunityLineItem> allLine = new List<OpportunityLineItem> ([Select Id from OpportunityLineItem where OpportunityId = :testOpp[0].id]);
		System.assertEquals(10, allLine.size());
		SetProductServices setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.flowControl();
		setProdSer.saveOpp();

		List<Apexpages.Message> msgs = ApexPages.getMessages();
		boolean b = false;
		for (Apexpages.Message msg : msgs) {
			System.assert(msg.getDetail().contains('Set products was successful!'));
		}

	}

	static testmethod void chaterProducts() {
		List<Opportunity> testOpp = new List<Opportunity> ([Select Id, Fiscal_Date_Start__c, Q4_Date_Testing__c from Opportunity]);
		System.assertEquals(1, testOpp.size());
		testOpp[0].Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testOpp[0].Q4_Date_Testing__c = Date.newInstance(2017, 05, 01);
		update testOpp;

		Account acct = [Select Id from Account limit 1];
		acct.RecordtypeId = RecordTypeServices.getRecordTypeByDeveloperName('Chapter', 'Account').Id;
		acct.Chapter_Dues__c = 'All Members';
		update acct;

		Contact testCon = [Select Id, AccountId from Contact limit 1];
		testCon.AccountId = acct.Id;
		testCon.Membership_Status__c = 'Member';
		testCon.Lifetime_Dues_Status__c = 'Completed Payment Cycle';
		update testCon;

		Product2 testProd = [Select Id, Tier_Number__c, Fiscal_Date_Start__c, Country__c, Family from Product2 LIMIT 1];
		testProd.Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testProd.Family = 'Chapter Dues';
		testProd.Product_Type__c = 'Primary';
		testProd.Tier_Number__c = '1';
		testProd.Account__c = testCon.AccountId;

		update testProd;

		Test.startTest();

		List<OpportunityLineItem> allLine = new List<OpportunityLineItem> ([Select Id from OpportunityLineItem where OpportunityId = :testOpp[0].id]);
		System.assertEquals(10, allLine.size());
		SetProductServices setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.flowControl();

		Test.stopTest();
	}

	static testmethod void yrAnnualDuesProducts() {
		Contact testCon = [Select Id, AccountId from Contact limit 1];
		testCon.Membership_Status__c = 'Honorary Member';
		testCon.MailingCountry = 'United States';
		testCon.Address1_Type__C = 'Home';
		testCon.Tier_Number__c = '1';
		testCon.HouseholdID__c = testCon.AccountId;
		update testCon;

		List<Product2> testProds = new List<Product2> ([Select Id, Tier_Number__c, Fiscal_Date_Start__c, Country__c, Family from Product2]);
		System.assertEquals(10, testProds.size());
		testProds[0].Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testProds[0].Family = 'Annual Dues';
		testProds[0].Product_Type__c = 'Primary';
		testProds[0].Tier_Number__c = '1';

		testProds[1].Fiscal_Date_Start__c = Date.newInstance(2018, 07, 01);
		testProds[1].Product_Type__c = 'Primary';
		testProds[1].Family = 'Lifetime Dues';

		testProds[2].Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testProds[2].Family = 'Annual Dues';
		testProds[2].Country__c = '';
		testProds[2].Tier_Number__c = '1';

		update testProds;

		List<Opportunity> testOpp = new List<Opportunity> ([Select Id, Fiscal_Date_Start__c, Q4_Date_Testing__c from Opportunity]);
		System.assertEquals(1, testOpp.size());
		testOpp[0].Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testOpp[0].Q4_Date_Testing__c = Date.newInstance(2017, 05, 01);
		update testOpp;

		Test.startTest();

		SetProductServices setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.flowControl();

		testCon.Membership_Status__c = 'Member';
		testCon.Lifetime_Dues_Status__c = 'Completed Payment Cycle';
		update testCon;

		setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.flowControl();

		testCon.Membership_Status__c = 'Member';
		testCon.Lifetime_Dues_Status__c = 'In Payment Cycle';
		update testCon;

		setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.flowControl();

		testCon.Membership_Status__c = 'Prospect';
		testCon.Lifetime_Dues_Status__c = '';
		update testCon;

		setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.flowControl();

		Test.stopTest();
	}

	static testmethod void surrivingSpousePartner() {

		List<Opportunity> testOpp = new List<Opportunity> ([Select Id, Fiscal_Date_Start__c, Q4_Date_Testing__c from Opportunity]);
		System.assertEquals(1, testOpp.size());
		testOpp[0].Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testOpp[0].Q4_Date_Testing__c = Date.newInstance(2017, 05, 01);
		update testOpp;

		Account acct = [Select Id from Account limit 1];
		acct.RecordtypeId = RecordTypeServices.getRecordTypeByDeveloperName('Chapter', 'Account').Id;
		acct.Chapter_Dues__c = 'All Members';
		update acct;

		Contact testCon = [Select Id, AccountId from Contact limit 1];
		testCon.AccountId = acct.Id;
		testCon.Membership_Status__c = 'Surviving Spouse/Partner';
		testCon.Lifetime_Dues_Status__c = 'Completed Payment Cycle';
		update testCon;


		Product2 testProd = [Select Id, Tier_Number__c, Fiscal_Date_Start__c, Country__c, Family from Product2 LIMIT 1];
		testProd.Fiscal_Date_Start__c = Date.newInstance(2017, 07, 01);
		testProd.Family = 'Chapter Dues';
		testProd.Product_Type__c = 'Primary';
		testProd.Tier_Number__c = '1';
		testProd.Account__c = testCon.AccountId;

		update testProd;

		Test.startTest();

		List<OpportunityLineItem> allLine = new List<OpportunityLineItem> ([Select Id from OpportunityLineItem where OpportunityId = :testOpp[0].id]);
		System.assertEquals(10, allLine.size());
		SetProductServices setProdSer = new SetProductServices(new ApexPages.StandardController(testOpp[0]));
		setProdSer.flowControl();

		Test.stopTest();

	}
}