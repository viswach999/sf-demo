<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>External_Connection_Upsert</fullName>
        <apiVersion>42.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ExternalConnectionService.svc</endpointUrl>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Description__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Active__c</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>OwnerId</fields>
        <fields>RecordTypeId</fields>
        <fields>Record_Type__c</fields>
        <fields>SystemModstamp</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>External Connection Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>External Connection Upsert</fullName>
        <actions>
            <name>External_Connection_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Any time a External Connection is created or updated.</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
