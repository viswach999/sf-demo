<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populate_End_Date</fullName>
        <field>End_Date__c</field>
        <formula>DATE(YEAR( Start_Date__c )+1,06,30)</formula>
        <name>Populate End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Start_Date</fullName>
        <field>Start_Date__c</field>
        <formula>IF(MONTH(TODAY())&gt;6, DATE(YEAR(TODAY())+1,07,01), DATE(YEAR(TODAY()),07,01))</formula>
        <name>Populate Start Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Past</fullName>
        <field>Status__c</field>
        <literalValue>Past</literalValue>
        <name>Status to Past</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contact_Position_Status_to_Past</fullName>
        <field>Status__c</field>
        <literalValue>Past</literalValue>
        <name>Update Contact Position Status to Past</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Past</fullName>
        <field>Status__c</field>
        <literalValue>Past</literalValue>
        <name>Update Status to Past</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>BW_Contact_Position_is_Changed</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactPositionService.svc</endpointUrl>
        <fields>Account__c</fields>
        <fields>Committee_Member_Type__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>End_Date__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Officer_Position__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Position_Category__c</fields>
        <fields>Position_Title__c</fields>
        <fields>Position__c</fields>
        <fields>Start_Date__c</fields>
        <fields>Status__c</fields>
        <fields>SystemModstamp</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Contact Position is Changed</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>BW_Contact_Position_is_Past</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactPositionService.svc</endpointUrl>
        <fields>Account__c</fields>
        <fields>Committee_Member_Type__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>End_Date__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Officer_Position__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Position_Category__c</fields>
        <fields>Position_Title__c</fields>
        <fields>Position__c</fields>
        <fields>Start_Date__c</fields>
        <fields>Status__c</fields>
        <fields>SystemModstamp</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Contact Position is Past</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>BW_Create_Contact_Position</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ContactPositionService.svc</endpointUrl>
        <fields>Account__c</fields>
        <fields>Committee_Member_Type__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>End_Date__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Officer_Position__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>Position_Category__c</fields>
        <fields>Position_Title__c</fields>
        <fields>Position__c</fields>
        <fields>Start_Date__c</fields>
        <fields>Status__c</fields>
        <fields>SystemModstamp</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>integration@ypowpo.org</integrationUser>
        <name>BW Create Contact Position</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Contact Position Deleted</fullName>
        <actions>
            <name>BW_Contact_Position_is_Past</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact_Position__c.Status__c</field>
            <operation>equals</operation>
            <value>Past</value>
        </criteriaItems>
        <description>This will send an outbound message whenever Status is changed to Past</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact Position Inactive</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact_Position__c.End_Date__c</field>
            <operation>lessThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Status_to_Past</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Contact_Position__c.End_Date__c</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Contact Position is Changed</fullName>
        <actions>
            <name>BW_Contact_Position_is_Changed</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>AND(
NOT(ISPICKVAL(Status__c, &apos;Past&apos;)),
OR (
  DATEVALUE(LastModifiedDate)=Today(), 
  ISCHANGED(Send_OBM__c )
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Contact Position is Past</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact_Position__c.Status__c</field>
            <operation>equals</operation>
            <value>Past</value>
        </criteriaItems>
        <criteriaItems>
            <field>Position__c.Is_Officer_Position__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create Contact Position</fullName>
        <actions>
            <name>BW_Create_Contact_Position</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>DATEVALUE(CreatedDate)=Today()</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Start date and End date on Contact Position</fullName>
        <actions>
            <name>Populate_End_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Populate_Start_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact_Position__c.Start_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>This WR will populate start and end date on creation of contact position record if start date entered is null</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Contact Position Status to Past on End Date</fullName>
        <active>false</active>
        <description>Updates Contact Position Detail: Status to &quot;Past&quot; [when record is edited AND &apos;End Date&apos; is less than first day of new FY]</description>
        <formula>and(NOT( End_Date__c &gt; TODAY()))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Contact_Position_Status_to_Past</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
