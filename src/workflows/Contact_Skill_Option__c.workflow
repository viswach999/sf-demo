<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Contact_Skill_Option_Upsert</fullName>
        <apiVersion>42.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactSkillOptionService.svc</endpointUrl>
        <fields>Active_Contact_Skill_Option__c</fields>
        <fields>Category_Contact_Skill_Option__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>OwnerId</fields>
        <fields>Sub_Category_Contact_Skill_Option__c</fields>
        <fields>Sub_Category_Priority__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Theme_Contact_Skill_Option__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Contact Skill Option Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Contact Skill Option Upsert</fullName>
        <actions>
            <name>Contact_Skill_Option_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Any time a Contact Skill Option is created or updated.</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
