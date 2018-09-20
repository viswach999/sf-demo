<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Contact_External_Connection_Upsert</fullName>
        <apiVersion>42.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactExternalConnectionService.svc</endpointUrl>
        <fields>Active_ContactExternalConnection__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Description__c</fields>
        <fields>End_Date__c</fields>
        <fields>External_Connection__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>Industry_Category_1__c</fields>
        <fields>Industry_Category_2__c</fields>
        <fields>Industry_Category_3__c</fields>
        <fields>Industry_Subcategory_1__c</fields>
        <fields>Industry_Subcategory_2__c</fields>
        <fields>Industry_Subcategory_3__c</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Current__c</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Location__c</fields>
        <fields>Name</fields>
        <fields>Name__c</fields>
        <fields>Start_Date__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Topic__c</fields>
        <fields>Type__c</fields>
        <fields>Website__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Contact External Connection Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Contact External Connection Upsert</fullName>
        <actions>
            <name>Contact_External_Connection_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Any time a Contact External Connection created or updated</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
