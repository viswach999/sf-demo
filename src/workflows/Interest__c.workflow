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
    <outboundMessages>
        <fullName>Skill_Interest_Upserted</fullName>
        <apiVersion>41.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/InterestService.svc</endpointUrl>
        <fields>Category__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>Interest__c</fields>
        <fields>IsDeleted</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>SystemModstamp</fields>
        <fields>Type__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Skill Interest Upserted</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Interest Upserted</fullName>
        <actions>
            <name>Skill_Interest_Upserted</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <description>Fires anytime skills or interests are created or updated</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate Category%28Text%29</fullName>
        <actions>
            <name>Populate_Category_Text</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This WR will fill Category(Text) with value from Category picklist field</description>
        <formula>OR(ISCHANGED( Category__c ),ISNEW())</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
