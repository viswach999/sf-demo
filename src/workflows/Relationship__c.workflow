<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Household_set</fullName>
        <description>Sets household in a field on contact object to allow for easy reporting of other child objects of contact.</description>
        <field>Household__c</field>
        <formula>Account__r.Name</formula>
        <name>Household set</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_HouseholdID</fullName>
        <field>HouseholdID__c</field>
        <formula>Account__c</formula>
        <name>Update HouseholdID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_HouseholdName</fullName>
        <description>Update Household Name</description>
        <field>Household_Name__c</field>
        <formula>Account__r.Name</formula>
        <name>Update HouseholdName</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <outboundMessages>
        <fullName>BW_Relationship_Created</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/RelationshipService.svc</endpointUrl>
        <fields>Account__c</fields>
        <fields>Contact_Account__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Active__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Relationship_Type__c</fields>
        <fields>SystemModstamp</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Relationship Created</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>BW_Relationship_Deactivated</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/RelationshipService.svc</endpointUrl>
        <fields>Account__c</fields>
        <fields>Contact_Account__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Active__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Relationship_Type__c</fields>
        <fields>SystemModstamp</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Relationship Deactivated</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>BW_Relationship_Updated</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/RelationshipService.svc</endpointUrl>
        <fields>Account__c</fields>
        <fields>Contact_Account__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Active__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Relationship_Type__c</fields>
        <fields>SystemModstamp</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Relationship Updated</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Household set</fullName>
        <actions>
            <name>Household_set</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Relationship__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This rule puts the household name on the contact to allow for easy reporting with other child objects of Contact.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Relationship Created</fullName>
        <actions>
            <name>BW_Relationship_Created</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>DATEVALUE(CreatedDate) = TODAY()</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Relationship Updated</fullName>
        <actions>
            <name>BW_Relationship_Updated</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>NOT(ISNEW())</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Relationship is Deactivated</fullName>
        <actions>
            <name>BW_Relationship_Deactivated</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Relationship__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>When a relationship is deactivated</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update HouseholdID on Contact</fullName>
        <actions>
            <name>Update_HouseholdID</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_HouseholdName</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This WR will populate HouseholdID and Household Name fields on Contact with the value from Relationship records related to it.</description>
        <formula>NOT(ISNULL( Account__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
