<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_External_ID</fullName>
        <description>Concatenates Account Number and Sub-Account Number with a hyphen inbetween</description>
        <field>Account_External_ID__c</field>
        <formula>Account_Number__c + &apos;-&apos; + GL_Sub_Account_Number__c</formula>
        <name>Set External ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set External ID</fullName>
        <actions>
            <name>Set_External_ID</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>GL_Coding__c.Account_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Concatenates the Account Number and Sub-Account number with a hyphen in between for integration.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
