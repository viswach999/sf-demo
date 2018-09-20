<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populate_Is_Expired</fullName>
        <field>Is_Expired__c</field>
        <literalValue>1</literalValue>
        <name>Populate Is Expired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_the_Unique_ID_field</fullName>
        <description>This will populate the Unique ID field with (Typeofvoucher)-(NumberGenrator) format.</description>
        <field>Unique_ID__c</field>
        <formula>TEXT( Type__c ) &amp; &quot;-&quot; &amp; ( Number_Generator__c )</formula>
        <name>Populate the Unique ID field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_to_Expired</fullName>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>Status to Expired</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>VoucherstatusUpdate</fullName>
        <description>Status = Expired when expired date = today</description>
        <field>Status__c</field>
        <literalValue>Expired</literalValue>
        <name>VoucherstatusUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Voucher_Upsert</fullName>
        <apiVersion>38.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/VoucherService.svc</endpointUrl>
        <fields>Amount_Used__c</fields>
        <fields>Amount__c</fields>
        <fields>Balance__c</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>CurrencyIsoCode</fields>
        <fields>Date_Expired__c</fields>
        <fields>Date_Issued__c</fields>
        <fields>Date_Used__c</fields>
        <fields>Expiration_Date_Extended_Reason__c</fields>
        <fields>Expired_date_in_past__c</fields>
        <fields>GL_Account_Number__c</fields>
        <fields>GL_Sub_Account_Number__c</fields>
        <fields>GUID__c</fields>
        <fields>Id</fields>
        <fields>Identification__c</fields>
        <fields>IsDeleted</fields>
        <fields>Is_Expiration_Date_Extended__c</fields>
        <fields>Is_Expired__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>LastReferencedDate</fields>
        <fields>LastViewedDate</fields>
        <fields>Name</fields>
        <fields>Number_Generator__c</fields>
        <fields>Payment_Option__c</fields>
        <fields>Product__c</fields>
        <fields>Status__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Type__c</fields>
        <fields>Unique_ID__c</fields>
        <fields>Validation_Check__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Voucher Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Populate the Unique ID field on Voucher object</fullName>
        <actions>
            <name>Populate_the_Unique_ID_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will populate the  Unique ID field on Voucher object.</description>
        <formula>OR( ISNEW() , ISCHANGED( Type__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate_Is_Expired_Checkbox</fullName>
        <active>true</active>
        <description>If the Expiration Date is less than TODAY AND Is Expiration Date Extended is FALSE, this workflow rule triggers.</description>
        <formula>and(    Is_Expiration_Date_Extended__c = FALSE ,     ISPICKVAL( Status__c , &apos;Available&apos;),    Is_Expired__c  = FALSE )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Populate_Is_Expired</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Status_to_Expired</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Voucher__c.Date_Expired__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Voucher Upserted</fullName>
        <actions>
            <name>Voucher_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <description>Any time a voucher is created or updated</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>VoucherstatusUpdate</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Voucher__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update voucher status as &apos;expired&apos; when expired date is today</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>VoucherstatusUpdate</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Voucher__c.Date_Expired__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
