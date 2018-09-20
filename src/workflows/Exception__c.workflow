<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Grace_Extension_Approval_to_CC</fullName>
        <description>Email Grace Extension Approval to CC</description>
        <protected>false</protected>
        <recipients>
            <field>Chpter_Chair__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Member_Services/Grace_Extension_Chapter_Approval</template>
    </alerts>
    <alerts>
        <fullName>Email_Grace_Extension_Approval_to_CMO</fullName>
        <description>Email Grace Extension Approval to CMO</description>
        <protected>false</protected>
        <recipients>
            <field>Chapter_Membership_Officer__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Member_Services/Grace_Extension_Chapter_Approval</template>
    </alerts>
    <alerts>
        <fullName>Grace_Approved</fullName>
        <description>Grace Approved</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Chapter_Administrator__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>membership@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/Grace_Status_Approved</template>
    </alerts>
    <alerts>
        <fullName>Grace_Denied</fullName>
        <description>Grace Denied</description>
        <protected>false</protected>
        <recipients>
            <field>Chapter_Administrator__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>unfiled$public/Grace_Status_Denied</template>
    </alerts>
    <alerts>
        <fullName>Send_Grace_Extension_Email_to_Chapter_for_Approval</fullName>
        <description>Send Grace Extension Email to Chapter for Approval</description>
        <protected>false</protected>
        <recipients>
            <field>Chapter_Administrator__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Chapter_Membership_Officer__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Chpter_Chair__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>membership@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Member_Services/Grace_Extension_Chapter_Approval</template>
    </alerts>
    <fieldUpdates>
        <fullName>Certification_Status_Update</fullName>
        <field>Certification_Status__c</field>
        <literalValue>Complete</literalValue>
        <name>Certification Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Opportunity__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Date_Last_Grace_year_Used_on_Contact</fullName>
        <description>This will populate date in &apos;Date Last Grace Year Used&apos; field on Contact</description>
        <field>Date_Last_Grace_Year_Used__c</field>
        <formula>IF( MONTH( DATEVALUE(Opportunity__r.CreatedDate)) &lt;= 6,  DATE(YEAR(TODAY()),07,01), DATE(YEAR(TODAY()) + 1,07,01) )</formula>
        <name>Date Last Grace year Used on Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Contact__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Decision_Date</fullName>
        <field>Decision_Date__c</field>
        <formula>TODAY()</formula>
        <name>Decision Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Decision_Date_Denial</fullName>
        <field>Decision_Date__c</field>
        <formula>TODAY()</formula>
        <name>Decision Date Denial</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Exception_Status_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Exception Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Exception_Status_Denied</fullName>
        <field>Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Exception Status Denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Grace_Approved_Oppty</fullName>
        <field>Grace_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Grace Approved Oppty</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Opportunity__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Grace_Denied_Oppty</fullName>
        <field>Grace_Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Grace Status Denied Oppty</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Opportunity__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Grace_Extension_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Grace Extension Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Grace_Status_Approved</fullName>
        <description>Field to Update: Opportunity: Grace Statusl Picklist to Approved</description>
        <field>Grace_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Grace Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Opportunity__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Grace_Status_Denied</fullName>
        <description>Field to Update: Opportunity: Grace Status Picklist to Denied</description>
        <field>Grace_Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Grace Status Denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Opportunity__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Need_PRC_Approval</fullName>
        <field>Status__c</field>
        <literalValue>Needs PRC Approval</literalValue>
        <name>Need PRC Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Denied</fullName>
        <field>Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Status Denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Annual_Revenue_Dollar_Business_V</fullName>
        <field>Annual_Revenue_Dollar_Business_Volume__c</field>
        <formula>Opportunity__r.AnnualRevenue__c</formula>
        <name>Update Annual Revenue (Dollar Business V</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Birthdate</fullName>
        <field>Birthdate__c</field>
        <formula>Opportunity__r.Birthdate__c</formula>
        <name>Update Birthdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Enterprise_Value_Corporation_V</fullName>
        <field>Enterprise_Value_Corporation_Value__c</field>
        <formula>Opportunity__r.Enterprise_Value__c</formula>
        <name>Update 	 Enterprise Value (Corporation V</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Grace_Status_Oppty_denied</fullName>
        <field>Grace_Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Update Grace Status Oppty denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Opportunity__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_No_ofEmployees</fullName>
        <field>No_of_Employees__c</field>
        <formula>Opportunity__r.NumberOfEmployees__c</formula>
        <name>Update No.ofEmployees</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Organisation_Type</fullName>
        <field>Organisation_type__c</field>
        <formula>TEXT( Opportunity__r.Organization_Type__c )</formula>
        <name>Update Organisation Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Qualifying_Company</fullName>
        <field>Qualifying_Company__c</field>
        <formula>Opportunity__r.Qualifying_Company__c</formula>
        <name>Update Qualifying Company</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_as_Denied</fullName>
        <description>Update Status to Denied</description>
        <field>Status__c</field>
        <literalValue>Denied</literalValue>
        <name>Update Status as Denied</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Needs_PRC_Approval</fullName>
        <description>Update Status to Needs PRC Approval</description>
        <field>Status__c</field>
        <literalValue>Needs PRC Approval</literalValue>
        <name>Update Status to Needs PRC Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Title</fullName>
        <field>Title__c</field>
        <formula>TEXT(Opportunity__r.Title__c )</formula>
        <name>Update Title</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Total_Employee_Compensation</fullName>
        <field>Total_Employee_Compensation__c</field>
        <formula>Opportunity__r.Total_Employee_Compensation__c</formula>
        <name>Update Total Employee Compensation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_Decision_Date</fullName>
        <description>Decision Date = TODAY()</description>
        <field>Decision_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update to Decision Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Conga_WFR_Early_Transition_Request</fullName>
        <apiVersion>38.0</apiVersion>
        <endpointUrl>https://workflow.congamerge.com/OBMListener.ashx</endpointUrl>
        <fields>Early_Transition_Request__c</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>sarah.mayfield@ypo.org_prod</integrationUser>
        <name>Conga WFR Early Transition Request</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Conga_WFR_Grace_Ext_Chapt_Appr_CC</fullName>
        <apiVersion>38.0</apiVersion>
        <endpointUrl>https://workflow.congamerge.com/OBMListener.ashx</endpointUrl>
        <fields>Grace_Ext_Chapter_Approval_CC__c</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>sarah.mayfield@ypo.org_prod</integrationUser>
        <name>Conga WFR Grace Ext Chapt Appr CC</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Conga_WFR_Grace_Ext_Chapt_Appr_CMO</fullName>
        <apiVersion>38.0</apiVersion>
        <endpointUrl>https://workflow.congamerge.com/OBMListener.ashx</endpointUrl>
        <fields>Grace_Ext_Chapter_Approval_CMO__c</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>sarah.mayfield@ypo.org_prod</integrationUser>
        <name>Conga WFR Grace Ext Chapt Appr CMO</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Conga_Workflow_Grace_Chapter_Approval</fullName>
        <apiVersion>38.0</apiVersion>
        <endpointUrl>https://workflow.congamerge.com/OBMListener.ashx</endpointUrl>
        <fields>Grace_Chapter_Approval_CMO__c</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>sarah.mayfield@ypo.org_prod</integrationUser>
        <name>Conga Workflow Grace Chaptr Approval CMO</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Conga_Workflow_Grace_Chaptr_Approval_CC</fullName>
        <apiVersion>38.0</apiVersion>
        <endpointUrl>https://workflow.congamerge.com/OBMListener.ashx</endpointUrl>
        <fields>Grace_Chapter_Approval_CC__c</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>sarah.mayfield@ypo.org_prod</integrationUser>
        <name>Conga Workflow Grace Chaptr Approval CC</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Approval of Grace Request</fullName>
        <actions>
            <name>Decision_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Grace_Status_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Grace,Waiver</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <description>Approve Grace Request As a(n) Vice CMOs, need the ability to approve a grace request by a Chapter member So that grace can be processed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Date Last Grace Year Used on Contact</fullName>
        <actions>
            <name>Date_Last_Grace_year_Used_on_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Status__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Grace</value>
        </criteriaItems>
        <description>Populating date last grace year used on contact object , based on creation of opportunity and status of grace record.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Denial of Grace Request</fullName>
        <actions>
            <name>Decision_Date_Denial</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Grace_Status_Denied</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Status_Denied</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Denied</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Grace,Waiver</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <description>Deny Grace Request As a(n) Vice CMOs, need the ability to Deny a grace request by a Chapter member So that grace can be processed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Early Transition Approved</fullName>
        <actions>
            <name>Update_Status_to_Needs_PRC_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Type_of_Waiver__c</field>
            <operation>equals</operation>
            <value>YPO Gold Early Transition - Age,YPO Gold Early Transition - YPO Years</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Waiver</value>
        </criteriaItems>
        <description>Chapter Approval picklist is updated to Approved AND
(Type of Exception = YPO Gold Early Transition – Age OR YPO Years) AND 
Exception Category = Waiver
Exception.Status = Needs PRC Approval</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Early Transition Denied</fullName>
        <actions>
            <name>Update_Status_as_Denied</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_to_Decision_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Denied</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Type_of_Waiver__c</field>
            <operation>equals</operation>
            <value>YPO Gold Early Transition - Age,YPO Gold Early Transition - YPO Years</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Waiver</value>
        </criteriaItems>
        <description>When exception record is Chapter Approval = Denied
Type of Exception = YPO Gold Early Transition – Age OR
Type of Exception = YPO Gold Early Transition – YPO Years AND
Exception Category = Waiver</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Grace Approval</fullName>
        <actions>
            <name>Grace_Approved</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Exception_Status_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Grace</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Grace Denied</fullName>
        <actions>
            <name>Exception_Status_Denied</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Grace_Status_Oppty_denied</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Denied</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Grace</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Grace Extension Approval - PRC</fullName>
        <actions>
            <name>Need_PRC_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Waiver</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Type_of_Waiver__c</field>
            <operation>equals</operation>
            <value>Grace Extension</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Grace Extension Rejected</fullName>
        <actions>
            <name>Grace_Extension_Rejected</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Denied</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Waiver</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Type_of_Waiver__c</field>
            <operation>equals</operation>
            <value>Grace Extension</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Oppty - Grace Status Approved</fullName>
        <actions>
            <name>Certification_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Grace_Approved_Oppty</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Grace</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <description>This workflow rule updates the opportunity status when an exception is approved.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Oppty - Grace Status Denied</fullName>
        <actions>
            <name>Grace_Denied_Oppty</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Chapter_Approval__c</field>
            <operation>equals</operation>
            <value>Denied</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Grace</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <description>This workflow rule updates the opportunity status when an exception is denied.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Grace Ext for Chapter Approval - CC</fullName>
        <actions>
            <name>Conga_WFR_Grace_Ext_Chapt_Appr_CC</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>AND(ISPICKVAL( Exception_Category__c , &quot;Waiver&quot;),ISPICKVAL( Type_of_Waiver__c, &quot;Grace Extension&quot;))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send Grace Ext for Chapter Approval - CMO</fullName>
        <actions>
            <name>Conga_WFR_Grace_Ext_Chapt_Appr_CMO</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL( Exception_Category__c , &quot;Waiver&quot;)&amp;&amp; ISPICKVAL( Type_of_Waiver__c, &quot;Grace Extension&quot;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send Grace Extension Request to Chapter</fullName>
        <actions>
            <name>Send_Grace_Extension_Email_to_Chapter_for_Approval</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Exception__c.Type_of_Waiver__c</field>
            <operation>equals</operation>
            <value>Grace Extension</value>
        </criteriaItems>
        <criteriaItems>
            <field>Exception__c.Exception_Category__c</field>
            <operation>equals</operation>
            <value>Waiver</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send Grace for Chapter Approval - CC</fullName>
        <actions>
            <name>Conga_Workflow_Grace_Chaptr_Approval_CC</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL( Exception_Category__c , &quot;Grace&quot;)&amp;&amp; 
OR( (Chapter_Membership_Officer__r.ContactId &lt;&gt; 
Contact__r.Id ), ISBLANK(Chapter_Membership_Officer__r.Id)) 
&amp;&amp;Opportunity__r.RecordType.DeveloperName =&quot;Member&quot;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send Grace for Chapter Approval - CMO</fullName>
        <actions>
            <name>Conga_Workflow_Grace_Chapter_Approval</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL( Exception_Category__c , &quot;Grace&quot;)&amp;&amp; 
( Chapter_Membership_Officer__r.ContactId &lt;&gt; 
Contact__r.Id ) 
&amp;&amp;Opportunity__r.RecordType.DeveloperName =&quot;Member&quot;</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Qualifying Criteria</fullName>
        <actions>
            <name>Update_Annual_Revenue_Dollar_Business_V</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Birthdate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Enterprise_Value_Corporation_V</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_No_ofEmployees</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Organisation_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Qualifying_Company</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Title</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Total_Employee_Compensation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>On creation ONLY (not update) of Exception, IF OpportunityID is NOT NULL, populate the fields on the Exception record with the values on the opportunity record.</description>
        <formula>NOT(ISNULL(Opportunity__c))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Grace_Approved_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Grace Approved - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Grace_status_Approved_alert_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Grace status Approved alert - Sent</subject>
    </tasks>
</Workflow>
