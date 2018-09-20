<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populate_Category_Text</fullName>
        <field>Category_Text__c</field>
        <formula>TEXT( Category__c )</formula>
        <name>Populate Category(Text)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Sub_Category_Text</fullName>
        <field>Sub_Category_Text__c</field>
        <formula>TEXT( Sub_Category__c )</formula>
        <name>Populate Sub-Category(Text)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Populate Category %26 Sub-Category text fields</fullName>
        <actions>
            <name>Populate_Category_Text</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Populate_Sub_Category_Text</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This WR wil update Category and Sub-Category text fields with the value from the picklist fields.</description>
        <formula>OR(ISCHANGED( Category__c ),ISCHANGED( Sub_Category__c ), ISNEW())</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
