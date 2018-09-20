<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Contact_Profile_Completion_Upsert</fullName>
        <apiVersion>42.0</apiVersion>
        <description>Contact Profile Completion Updated</description>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactProfileCompletionService.svc</endpointUrl>
        <fields>Biography__c</fields>
        <fields>Business_Expertise__c</fields>
        <fields>Business_Phone__c</fields>
        <fields>Business_Role__c</fields>
        <fields>Business_Scope__c</fields>
        <fields>Company_Address__c</fields>
        <fields>Company_Industry_Category__c</fields>
        <fields>Company_Name__c</fields>
        <fields>Company_Size__c</fields>
        <fields>Company_Type__c</fields>
        <fields>Completion_Percentage__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Education__c</fields>
        <fields>External_Connection__c</fields>
        <fields>Id</fields>
        <fields>Interests__c</fields>
        <fields>IsDeleted</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Mobile_Phone__c</fields>
        <fields>Name</fields>
        <fields>Primary_Address__c</fields>
        <fields>Primary_Email__c</fields>
        <fields>Profile_Picture_Upload__c</fields>
        <fields>Social_Media__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Type_of_President__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Contact Profile Completion Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Contact Profile Completion Upsert</fullName>
        <actions>
            <name>Contact_Profile_Completion_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Whenever Contact Profile Completion is created or updated.</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
