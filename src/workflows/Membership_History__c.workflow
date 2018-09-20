<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populate_Join_Date_on_Contact</fullName>
        <field>Join_Date__c</field>
        <formula>Join_Date__c</formula>
        <name>Populate Join Date on Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Membership_Status</fullName>
        <field>Membership_Status__c</field>
        <literalValue>Resigned</literalValue>
        <name>Update Membership Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Membership_Status_to_Deceased</fullName>
        <field>Membership_Status__c</field>
        <literalValue>Deceased</literalValue>
        <name>Update Membership Status to Deceased</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Populate Join Date on Contact</fullName>
        <actions>
            <name>Populate_Join_Date_on_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Membership_History__c.YPO_WPO__c</field>
            <operation>equals</operation>
            <value>YPO</value>
        </criteriaItems>
        <criteriaItems>
            <field>Membership_History__c.Date_Left__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Membership_History__c.Join_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This WR will populate the join date from the membership history to the related Contact record</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Membership Status on Contact to Deceased</fullName>
        <actions>
            <name>Update_Membership_Status_to_Deceased</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Membership_History__c.Status__c</field>
            <operation>equals</operation>
            <value>Deceased</value>
        </criteriaItems>
        <description>Membership Status on Contact record to be updated to &apos;Deceased&apos; if Status on Membership is marked as &apos;Deceased&apos;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Membership Status on Contact to Resign - Depracate</fullName>
        <actions>
            <name>Update_Membership_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Membership_History__c.Status__c</field>
            <operation>equals</operation>
            <value>Resigned</value>
        </criteriaItems>
        <criteriaItems>
            <field>Membership_History__c.Reason__c</field>
            <operation>notEqual</operation>
            <value>Transfer,Transitioned</value>
        </criteriaItems>
        <description>721/17 - CK - Deactivated - review with Item 3718
Membership Status on Contact record to be updated to &apos;Resign&apos; if Status on Membership is marked as&apos; Resigned&apos; and Reason does not contain &apos;Transfer&apos; or &apos;Transitioned&apos;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
