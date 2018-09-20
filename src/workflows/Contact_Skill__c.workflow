<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Contact_Skill_Upsert</fullName>
        <apiVersion>42.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactSkillService.svc</endpointUrl>
        <fields>Active_Contact_Skill__c</fields>
        <fields>Adhoc_Sub_Category__c</fields>
        <fields>Contact_Skill_Option_ID__c</fields>
        <fields>Contact_on_Contact_Skill__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>SystemModstamp</fields>
        <fields>Type_Contact_Skill__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Contact Skill Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Contact Skill Upsert</fullName>
        <actions>
            <name>Contact_Skill_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Any time a Contact Skill is created or updated.</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
