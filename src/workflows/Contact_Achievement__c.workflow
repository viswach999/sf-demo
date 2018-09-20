<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populate_End_Date</fullName>
        <field>Date_Completed__c</field>
        <formula>TODAY()</formula>
        <name>Populate End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Last_Training_Date</fullName>
        <description>This will populate Last Training Date on Contact with created date of contact achievement record.</description>
        <field>Last_Training_Date__c</field>
        <formula>DATEVALUE(CreatedDate)</formula>
        <name>Populate Last Training Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Training_Name_Update</fullName>
        <description>Update Name__c on Contact_Achievement__c when a record is made from an Achievement__c record Type__c ‘Training’.</description>
        <field>Name__c</field>
        <formula>Achievement__r.Name__c</formula>
        <name>Training Name Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Contact_Achievement_Upsert</fullName>
        <apiVersion>40.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactAchievementService.svc</endpointUrl>
        <fields>Achievement_Category__c</fields>
        <fields>Achievement_Name__c</fields>
        <fields>Achievement__c</fields>
        <fields>Candidate_Status__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>CurrencyIsoCode</fields>
        <fields>Date_Completed__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Name__c</fields>
        <fields>RecordTypeId</fields>
        <fields>Status__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Training_Category__c</fields>
        <fields>YPO_Award_Year__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Contact Achievement Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Contact Achievement Creation Date on Contact</fullName>
        <actions>
            <name>Populate_Last_Training_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This WR will update &apos;Last Training Date&apos; as per Contact Achievement</description>
        <formula>AND( Contact__r.RecordType.Name = &apos;Chapter Administrator&apos;,  ISPICKVAL(Achievement__r.Achievement_Category__c , &apos;Workshop&apos;))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Contact Achievement Upsert</fullName>
        <actions>
            <name>Contact_Achievement_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>End Date field should be populated automatically with date when Status is changed to %27Completed%27</fullName>
        <actions>
            <name>Populate_End_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact_Achievement__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact_Achievement__c.Date_Completed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>End Date field should be populated automatically with date when Status is changed to &apos;Completed&apos;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Training Name on Contact Achievement</fullName>
        <actions>
            <name>Training_Name_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Achievement__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Training</value>
        </criteriaItems>
        <description>Update Training_Name__c on Contact_Achievement__c when a record is made from an Achievement__c record Type__c ‘Training’.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
