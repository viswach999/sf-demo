<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Case_Initial_Generic_Response</fullName>
        <description>Case Initial Generic Response</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/YPO_Generic_Case_Response</template>
    </alerts>
    <fieldUpdates>
        <fullName>Case_M2MX_Record_Type_Set</fullName>
        <field>RecordTypeId</field>
        <lookupValue>M2MX</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Case M2MX Record Type Set</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_M2MX_Name</fullName>
        <field>M2MX_Requestor_Name__c</field>
        <formula>Contact.FirstName &amp; &quot; &quot; &amp; Contact.LastName</formula>
        <name>Update M2MX Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Case M2MX Record Type Set</fullName>
        <actions>
            <name>Case_M2MX_Record_Type_Set</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>M2MX</value>
        </criteriaItems>
        <description>This sets M2MX record type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Populate M2MX Name</fullName>
        <actions>
            <name>Update_M2MX_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.RecordTypeId</field>
            <operation>equals</operation>
            <value>M2MX</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.M2MX_Requestor_Name__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>For M2MX Cases</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Response Email-to-Case</fullName>
        <actions>
            <name>Case_Initial_Generic_Response</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Case_Initial_Email_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>equals</operation>
            <value>Events Queue,Membership Development,M2MX Queue,Membership Services Queue,Exchange Queue,GLC Queue</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Case_Initial_Email_Sent</fullName>
        <assignedTo>salesforceadmin@ypo.org.prod</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Open</status>
        <subject>Case Initial Email Sent</subject>
    </tasks>
</Workflow>
