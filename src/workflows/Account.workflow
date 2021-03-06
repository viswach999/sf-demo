<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Account_Status_Update</fullName>
        <description>Updates Status to &apos;Active&apos; when Date Board Approved is populated</description>
        <field>Status__c</field>
        <literalValue>Active</literalValue>
        <name>Account Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Record_Type_Name</fullName>
        <field>Record_Type__c</field>
        <formula>RecordType.Name</formula>
        <name>Populate Record Type Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Dissolved</fullName>
        <field>Status__c</field>
        <literalValue>Dissolved</literalValue>
        <name>Status Dissolved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Dissolved</fullName>
        <description>Updates the Account Status to Dissolved</description>
        <field>Status__c</field>
        <literalValue>Dissolved</literalValue>
        <name>Update Status to Dissolved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>BW_Account_Created</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/AccountService.svc</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>AnnualRevenue</fields>
        <fields>Business_Scope__c</fields>
        <fields>CVent_ID__c</fields>
        <fields>Category__c</fields>
        <fields>Company__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Description</fields>
        <fields>Eligibility_Requirements__c</fields>
        <fields>End_Date__c</fields>
        <fields>Enrollment_Email__c</fields>
        <fields>Enrollment_Method__c</fields>
        <fields>Firm_Type__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>Include_in_Directory__c</fields>
        <fields>Industry</fields>
        <fields>IsCustomerPortal</fields>
        <fields>IsDeleted</fields>
        <fields>IsPartner</fields>
        <fields>Is_Integrated__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Network_Focus_Sub_Category__c</fields>
        <fields>Network_Sub_Network__c</fields>
        <fields>New_Member_Status__c</fields>
        <fields>NumberOfEmployees</fields>
        <fields>Number_Account_Members__c</fields>
        <fields>Number__c</fields>
        <fields>Offers_Internships__c</fields>
        <fields>OwnerId</fields>
        <fields>Ownership</fields>
        <fields>ParentId</fields>
        <fields>Parent_Company__c</fields>
        <fields>Phone</fields>
        <fields>PhotoUrl</fields>
        <fields>Rating</fields>
        <fields>RecordTypeId</fields>
        <fields>Record_Type_Name__c</fields>
        <fields>Record_Type__c</fields>
        <fields>Site</fields>
        <fields>Start_Date__c</fields>
        <fields>Status__c</fields>
        <fields>Sub_Category__c</fields>
        <fields>Sub_Type__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Type</fields>
        <fields>Website</fields>
        <fields>YPOI_Organizational_Code__c</fields>
        <fields>YPOI_Type__c</fields>
        <fields>YearStarted</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Account Created</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>BW_Account_Deleted</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/AccountService.svc</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>AnnualRevenue</fields>
        <fields>Business_Scope__c</fields>
        <fields>CVent_ID__c</fields>
        <fields>Category__c</fields>
        <fields>Company__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Description</fields>
        <fields>Eligibility_Requirements__c</fields>
        <fields>End_Date__c</fields>
        <fields>Enrollment_Email__c</fields>
        <fields>Enrollment_Method__c</fields>
        <fields>Firm_Type__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>Include_in_Directory__c</fields>
        <fields>Industry</fields>
        <fields>IsCustomerPortal</fields>
        <fields>IsDeleted</fields>
        <fields>IsPartner</fields>
        <fields>Is_Integrated__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Network_Focus_Sub_Category__c</fields>
        <fields>Network_Sub_Network__c</fields>
        <fields>New_Member_Status__c</fields>
        <fields>NumberOfEmployees</fields>
        <fields>Number_Account_Members__c</fields>
        <fields>Number__c</fields>
        <fields>Offers_Internships__c</fields>
        <fields>OwnerId</fields>
        <fields>Ownership</fields>
        <fields>ParentId</fields>
        <fields>Parent_Company__c</fields>
        <fields>Phone</fields>
        <fields>PhotoUrl</fields>
        <fields>Rating</fields>
        <fields>RecordTypeId</fields>
        <fields>Record_Type_Name__c</fields>
        <fields>Record_Type__c</fields>
        <fields>Site</fields>
        <fields>Start_Date__c</fields>
        <fields>Status__c</fields>
        <fields>Sub_Category__c</fields>
        <fields>Sub_Type__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Type</fields>
        <fields>Website</fields>
        <fields>YPOI_Organizational_Code__c</fields>
        <fields>YPOI_Type__c</fields>
        <fields>YearStarted</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Account Deleted</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>BW_Account_Updates</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/AccountService.svc</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>AnnualRevenue</fields>
        <fields>Business_Scope__c</fields>
        <fields>CVent_ID__c</fields>
        <fields>Category__c</fields>
        <fields>Company__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Description</fields>
        <fields>Eligibility_Requirements__c</fields>
        <fields>End_Date__c</fields>
        <fields>Enrollment_Email__c</fields>
        <fields>Enrollment_Method__c</fields>
        <fields>Firm_Type__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>Include_in_Directory__c</fields>
        <fields>Industry</fields>
        <fields>IsCustomerPortal</fields>
        <fields>IsDeleted</fields>
        <fields>IsPartner</fields>
        <fields>Is_Integrated__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Network_Focus_Sub_Category__c</fields>
        <fields>Network_Sub_Network__c</fields>
        <fields>New_Member_Status__c</fields>
        <fields>NumberOfEmployees</fields>
        <fields>Number_Account_Members__c</fields>
        <fields>Number__c</fields>
        <fields>Offers_Internships__c</fields>
        <fields>OwnerId</fields>
        <fields>Ownership</fields>
        <fields>ParentId</fields>
        <fields>Parent_Company__c</fields>
        <fields>Phone</fields>
        <fields>PhotoUrl</fields>
        <fields>Rating</fields>
        <fields>RecordTypeId</fields>
        <fields>Record_Type_Name__c</fields>
        <fields>Record_Type__c</fields>
        <fields>Site</fields>
        <fields>Start_Date__c</fields>
        <fields>Status__c</fields>
        <fields>Sub_Category__c</fields>
        <fields>Sub_Type__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Type</fields>
        <fields>Website</fields>
        <fields>YPOI_Organizational_Code__c</fields>
        <fields>YPOI_Type__c</fields>
        <fields>YearStarted</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Account Updates</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Account Created</fullName>
        <actions>
            <name>BW_Account_Created</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>DATEVALUE(CreatedDate)  =  TODAY()</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Account Deleted</fullName>
        <actions>
            <name>BW_Account_Deleted</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Status__c</field>
            <operation>equals</operation>
            <value>Dissolved,Archived,Inactive</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Account Updated</fullName>
        <actions>
            <name>BW_Account_Updates</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>AND( 
    NOT(ISPICKVAL(Status__c, &apos;Dissolved&apos;)), 
    NOT(ISNEW()),
    NOT( ISCHANGED(Number_Account_Members__c)),
    NOT( ISCHANGED(Family_Members__c)),
    NOT( ISCHANGED(KGRenewal__LastExpirationDate__c)),
    NOT( ISCHANGED(Number_of_Won_Opportunities__c)),
    NOT( ISCHANGED(Number_of_Won_Prospect_Opportunities__c)),
    OR(
ISCHANGED(AccountNumber),
ISCHANGED(AnnualRevenue),
ISCHANGED(Business_Scope__c),
ISCHANGED(CVent_ID__c),
ISCHANGED(Category__c),
ISCHANGED(Company__c),
ISCHANGED(Description),
ISCHANGED(Eligibility_Requirements__c),
ISCHANGED(End_Date__c),
ISCHANGED(Enrollment_Email__c),
ISCHANGED(Enrollment_Method__c),
ISCHANGED(Firm_Type__c),
ISCHANGED(GUID__c),
ISCHANGED(Include_in_Directory__c),
ISCHANGED(Industry),
ISCHANGED(Name),
ISCHANGED(Network_Focus_Sub_Category__c),
ISCHANGED(Network_Sub_Network__c),
ISCHANGED(New_Member_Status__c),
ISCHANGED(NumberOfEmployees),
ISCHANGED(Number_Account_Members__c),
ISCHANGED(Number__c),
ISCHANGED(Offers_Internships__c),
ISCHANGED(OwnerId),
ISCHANGED(Ownership),
ISCHANGED(ParentId),
ISCHANGED(Parent_Company__c),
ISCHANGED(Phone),
ISCHANGED(Rating),
ISCHANGED(RecordTypeId),
ISCHANGED(Record_Type_Name__c),
ISCHANGED(Record_Type__c),
ISCHANGED(Site),
ISCHANGED(Start_Date__c),
ISCHANGED(Status__c),
ISCHANGED(Sub_Category__c),
ISCHANGED(Sub_Type__c),
ISCHANGED(Type),
ISCHANGED(Website),
ISCHANGED(YPOI_Organizational_Code__c),
ISCHANGED(YPOI_Type__c),
ISCHANGED(YearStarted)
  )
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Acct Chapter Approved</fullName>
        <actions>
            <name>Account_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_up_GL_Account</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Date_Board_Approved__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This will trigger when &apos;Date Board Approved&apos; is populated</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Make Account Dissolved</fullName>
        <active>true</active>
        <formula>and(NOT(isnull(End_Date__c)), or( RecordType.Name = &quot;Committee&quot;, RecordType.Name = &quot;Forum&quot;, RecordType.Name = &quot;Chapter&quot;, RecordType.Name = &quot;Network&quot; ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Status_Dissolved</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.End_Date__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Populate Record Type</fullName>
        <actions>
            <name>Populate_Record_Type_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will populate Record Type custom field on Account. This field is used in code by Shri</description>
        <formula>OR( ISNEW() , ISCHANGED( RecordTypeId ) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Set_up_GL_Account</fullName>
        <assignedTo>salesforceadmin@ypo.org.prod</assignedTo>
        <assignedToType>user</assignedToType>
        <description>New Chapter - set up GL account. assigned Nick Dubernard in order to deactivate Jonathan Bernd.</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Open</status>
        <subject>Set up GL Account</subject>
    </tasks>
</Workflow>
