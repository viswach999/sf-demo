<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Achievement_Upsert</fullName>
        <apiVersion>40.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/AchievementService.svc</endpointUrl>
        <fields>Achievement_Category__c</fields>
        <fields>Achievement_Type__c</fields>
        <fields>Award_Department__c</fields>
        <fields>Code__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>GUID__c</fields>
        <fields>Hierarchy__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Membership_Type__c</fields>
        <fields>Name</fields>
        <fields>Name__c</fields>
        <fields>OwnerId</fields>
        <fields>RecordTypeId</fields>
        <fields>Stage__c</fields>
        <fields>Status__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Training_Category__c</fields>
        <fields>Type__c</fields>
        <fields>Validation_Check__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Achievement Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Achievement Upsert</fullName>
        <actions>
            <name>Achievement_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
