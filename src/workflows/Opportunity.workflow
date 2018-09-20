<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Alert_Latin_America_Western_Pacific</fullName>
        <description>Email Alert Latin America Western Pacific</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>jlee@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Welcome_Calls/Welcome_Call_Email_Julianna_formerly_from_Lili</template>
    </alerts>
    <alerts>
        <fullName>Email_Alert_Welcome_Europe_Asia_AFrica</fullName>
        <description>Email Alert Welcome Europe Asia AFrica</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>ddas@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Welcome_Calls/Welcome_Call_Email_Darleth</template>
    </alerts>
    <alerts>
        <fullName>Email_NEUS_SEC_Cen_EC_CA</fullName>
        <description>Email NEUS SOUTHUS Central EC Canada</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>jlee@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Welcome_Calls/Welcome_Call_Email_Julianna</template>
    </alerts>
    <alerts>
        <fullName>Email_Ross_and_Kristin_when_Code_of_Conduct_Accepted</fullName>
        <description>Email Ross and Kristin when Code of Conduct Accepted</description>
        <protected>false</protected>
        <recipients>
            <recipient>kristin.mikula@ypowpo.org</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ross.freeman@ypowpo.org</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/User_Updated_Code_of_Conduct</template>
    </alerts>
    <alerts>
        <fullName>Full_payment_not_received_and_14_days_have_passed_alert_Mbmr</fullName>
        <description>Full payment not received and 14 days have passed alert - Member</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>membership@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Full_payment_not_received_and_7_days_have_passed_Member</template>
    </alerts>
    <alerts>
        <fullName>Full_payment_not_received_and_21_days_have_passed_alert</fullName>
        <description>Full payment not received and 21 days have passed alert</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Full_payment_not_received_and_7_days_have_passed</template>
    </alerts>
    <alerts>
        <fullName>Full_payment_not_received_and_21_days_have_passed_alert_Mbmr</fullName>
        <description>Full payment not received and 21 days have passed alert - Member</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>membership@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Full_payment_not_received_and_7_days_have_passed_Member</template>
    </alerts>
    <alerts>
        <fullName>Full_payment_not_received_and_30_days_have_passed_alert</fullName>
        <description>Full payment not received and 30 days have passed alert</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Full_payment_not_received_and_7_days_have_passed</template>
    </alerts>
    <alerts>
        <fullName>Full_payment_not_received_and_7_days_have_passed_alert</fullName>
        <description>Full payment not received and 7 days have passed alert</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Full_payment_not_received_and_7_days_have_passed</template>
    </alerts>
    <alerts>
        <fullName>Full_payment_not_received_and_7_days_have_passed_alert_Mmbr</fullName>
        <description>Full payment not received and 7 days have passed alert - Member</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>membership@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Full_payment_not_received_and_7_days_have_passed_Member</template>
    </alerts>
    <alerts>
        <fullName>Notify_Chapter_of_New_Member</fullName>
        <description>Notify Chapter of New Member</description>
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
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Notify_Chapter_of_New_Member1</template>
    </alerts>
    <alerts>
        <fullName>Notify_Member_of_Grace_Approval</fullName>
        <description>Notify Member of Grace Approval</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
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
        <senderType>DefaultWorkflowUser</senderType>
        <template>unfiled$public/Grace_Status_Approved</template>
    </alerts>
    <alerts>
        <fullName>X3PV_Confirmation_to_Member</fullName>
        <description>3PV Confirmation to Member</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>Chapter_Administrator__c</field>
            <type>userLookup</type>
        </recipients>
        <senderAddress>membership@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>DocuSign/X3PV_Confirmation_to_Member</template>
    </alerts>
    <alerts>
        <fullName>YNG_Notifications_to_Member_and_Child_Closed_Won_alert</fullName>
        <description>YNG+ Notifications to Member and Child - Closed Won alert</description>
        <protected>false</protected>
        <recipients>
            <field>Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/YNG_Notifications_to_Member_and_Child_Opp_Closed_Won</template>
    </alerts>
    <alerts>
        <fullName>YNG_Notifications_to_Member_and_Child_Payment_Received_alert</fullName>
        <description>YNG+ Notifications to Member and Child - Closed Won alert</description>
        <protected>false</protected>
        <recipients>
            <field>KGRenewal__Contact__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>unfiled$public/YNG_Notifications_to_Member_and_Child_Closed_Won</template>
    </alerts>
    <fieldUpdates>
        <fullName>Cert_Status_Requested</fullName>
        <field>Certification_Status__c</field>
        <literalValue>Requested</literalValue>
        <name>Cert Status Requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Certification_Page_Status_Exchange_Updat</fullName>
        <field>Certification_Page_Status_Exchange__c</field>
        <literalValue>Complete</literalValue>
        <name>Certification Page Status Exchange Updat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Certification_to_Complete</fullName>
        <field>Certification_Status__c</field>
        <literalValue>Complete</literalValue>
        <name>Certification to Complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Datestamp_Q4_Consideration_Date</fullName>
        <field>Q4_Date_Testing__c</field>
        <formula>TODAY()</formula>
        <name>Datestamp Q4 Consideration Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Dues_Page_Status_Complete</fullName>
        <description>Dues Page Status (Exchange) to a specific value of &apos;Complete&apos;</description>
        <field>Dues_Page_Status_Exchange__c</field>
        <literalValue>Complete</literalValue>
        <name>Dues Page Status Complete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_decrement_Opp_remaining_installments</fullName>
        <description>Decrement Opp&apos;s Remaining Installment field by 1 (for Lifetime Dues product)</description>
        <field>Remaining_Installments__c</field>
        <formula>Remaining_Installments__c - 1</formula>
        <name>KG decrement Opp remaining installments</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_set_Opportunity_end_date_to_end_of_FY</fullName>
        <description>Set Contract End Date to end (June 30) of the fiscal year (or, if Q4, to end of next fiscal year)</description>
        <field>KGRenewal__ContractEndDate__c</field>
        <formula>IF(MONTH(TODAY())&lt;4, DATE(YEAR(TODAY()),6,30), DATE(YEAR(TODAY())+1,6,30))</formula>
        <name>KG set Opportunity end date to end of FY</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_set_Opportunity_start_to_start_of_FY</fullName>
        <description>Sets the Contract Effective Date of the Opportunity to the start of the Fiscal Year</description>
        <field>KGRenewal__ContractEffectiveDate__c</field>
        <formula>IF(MONTH(TODAY())&lt;7, DATE(YEAR(TODAY())-1,7,1), DATE(YEAR(TODAY()),7,1))</formula>
        <name>KG set Opportunity start to start of FY</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Reset_Name</fullName>
        <description>Updates to new year</description>
        <field>Name</field>
        <formula>SUBSTITUTE(Name, RIGHT(Name, 10), &quot; FY&quot; + RIGHT(TEXT(YEAR( Next_Fiscal_Year_Date_Start__c)),2))</formula>
        <name>Opportunity Reset Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_to_Closed_Won</fullName>
        <description>Opportunity to Closed Won</description>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>Opportunity to Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Enterprise_Value_Corporation</fullName>
        <field>Enterprise_Value__c</field>
        <formula>Account.Enterprise_Value__c</formula>
        <name>Populate &apos;Enterprise Value (Corporation)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetContractEndDate</fullName>
        <field>KGRenewal__ContractEndDate__c</field>
        <formula>IF(MONTH( KGRenewal__ContractEffectiveDate__c )&lt;=6, DATE(YEAR(  KGRenewal__ContractEffectiveDate__c  ), 06,30), IF(MONTH(  KGRenewal__ContractEffectiveDate__c  )&gt;=7, DATE(YEAR( KGRenewal__ContractEffectiveDate__c )+1, 06,30),null))</formula>
        <name>SetContractEndDate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_Verification_Date</fullName>
        <field>Date_Third_Party_Validated__c</field>
        <formula>TODAY()</formula>
        <name>Stamp Verification Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_3rd_Party_Checkbox</fullName>
        <field>Send_3rd_Party_Verification_Docusign__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck 3rd Party Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Active_Cart_to_False</fullName>
        <field>KGRenewal__IsActiveCart__c</field>
        <literalValue>0</literalValue>
        <name>Update Active Cart to False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Certification_Status</fullName>
        <field>Certification_Status__c</field>
        <literalValue>Received</literalValue>
        <name>Update Certification Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Opportunity_Name</fullName>
        <description>This updates Lead Opportunity Name with the value from Lead Oppty Name Long field for field mapping purposes.</description>
        <field>Lead_Opportunity_Name__c</field>
        <formula>Lead_Oppty_Name_Long__c</formula>
        <name>Update Lead Opportunity Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Local_Chapter_Dues_Paid_field</fullName>
        <description>Updates Date_Local_Chapter_Dues_Paid__c with Today() if CA checks Is_Paid_Local_Chapter_Dues__c .</description>
        <field>Date_Local_Chapter_Dues_Paid__c</field>
        <formula>Today()</formula>
        <name>Update Local Chapter Dues Paid field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opp_Stage_to_3rdPartyCert</fullName>
        <description>This will update the Opp StageName to Third Party Certified for Prospects when Certification Status = &apos;&quot;Complete&quot;</description>
        <field>StageName</field>
        <literalValue>3rd Party Validated</literalValue>
        <name>Update Opp Stage to 3rdPartyCert</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opportunity_Health_to_Green</fullName>
        <field>Opportunity_Health__c</field>
        <literalValue>Green</literalValue>
        <name>Update Opportunity Health to Green</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opportunity_Health_to_Red</fullName>
        <description>Update opportunity health to Red</description>
        <field>Opportunity_Health__c</field>
        <literalValue>Red</literalValue>
        <name>Update Opportunity Health to Red</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opportunity_Health_to_Yellow</fullName>
        <description>updates opportunity health to Yellow</description>
        <field>Opportunity_Health__c</field>
        <literalValue>Yellow</literalValue>
        <name>Update Opportunity Health to Yellow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Prospect_Cart_to_Active</fullName>
        <field>KGRenewal__IsActiveCart__c</field>
        <literalValue>1</literalValue>
        <name>Update Prospect Cart to Active</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_Closed_Won</fullName>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>Update to &apos;Closed Won&apos;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Welcome_Call_Email_Sent_Box</fullName>
        <field>Welcome_Call_Email_Sent__c</field>
        <literalValue>1</literalValue>
        <name>Welcome Call Email Sent Box</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Conga_WFR_Oppty_3rd_Party_Verification</fullName>
        <apiVersion>38.0</apiVersion>
        <endpointUrl>https://workflow.congamerge.com/OBMListener.ashx</endpointUrl>
        <fields>Conga_3rd_Party_Verification__c</fields>
        <fields>Id</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>sarah.mayfield@ypo.org_prod</integrationUser>
        <name>Conga WFR Oppty 3rd Party Verification</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <outboundMessages>
        <fullName>Opportunity_Upsert</fullName>
        <apiVersion>39.0</apiVersion>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/OpportunityService.svc</endpointUrl>
        <fields>Certification_Page_Status_Exchange__c</fields>
        <fields>CloseDate</fields>
        <fields>Contact__c</fields>
        <fields>CreatedById</fields>
        <fields>CreatedDate</fields>
        <fields>Dues_Page_Status_Exchange__c</fields>
        <fields>Fiscal_Date_Start__c</fields>
        <fields>ForecastCategory</fields>
        <fields>GUID__c</fields>
        <fields>HasOpenActivity</fields>
        <fields>HasOpportunityLineItem</fields>
        <fields>HasOverdueTask</fields>
        <fields>Id</fields>
        <fields>IsClosed</fields>
        <fields>IsDeleted</fields>
        <fields>IsPrivate</fields>
        <fields>IsWon</fields>
        <fields>KGRenewal__Contact__c</fields>
        <fields>KGRenewal__IsActiveCart__c</fields>
        <fields>LastActivityDate</fields>
        <fields>LastModifiedById</fields>
        <fields>LastModifiedDate</fields>
        <fields>Name</fields>
        <fields>OwnerId</fields>
        <fields>Profile_Page_Status_Exchange__c</fields>
        <fields>Record_Type_Name__c</fields>
        <fields>StageName</fields>
        <fields>Start_Date__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Title__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Opportunity Upsert</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>3PV Confirmation to Member</fullName>
        <actions>
            <name>X3PV_Confirmation_to_Member</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <description>Third Party Verification Request Sent - Member Notification</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Certification Page Status Exchange Update</fullName>
        <actions>
            <name>Certification_Page_Status_Exchange_Updat</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>equals</operation>
            <value>Complete,Validated</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Code of Conduct Accepted</fullName>
        <actions>
            <name>Email_Ross_and_Kristin_when_Code_of_Conduct_Accepted</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Code_of_Conduct_Accepted__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Datestamp Set Prospect Date</fullName>
        <actions>
            <name>Datestamp_Q4_Consideration_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>RecordType.DeveloperName = &quot;Prospect&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>DocuSign 3rd Party Verification</fullName>
        <actions>
            <name>Cert_Status_Requested</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Uncheck_3rd_Party_Checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Conga_WFR_Oppty_3rd_Party_Verification</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <booleanFilter>(5 and 6) or (1 and 2 and 3 and 4)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Send_3rd_Party_Verification_Docusign__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Third_Party_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Third_Party_Email__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Third_Party_Firm__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.X3rd_Party_Certification_Option_Chosen__c</field>
            <operation>equals</operation>
            <value>Email Criteria To a Verifier</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Dues Page Status Complete</fullName>
        <actions>
            <name>Dues_Page_Status_Complete</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Received</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Rule to stamp &apos;Complete&apos; on Dues Page Status (Exchange) field when stage updates to &apos;Payment Received&apos; or &apos;Closed Won&apos;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Full Payment Not Received - Member</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Record_Type_Name__c</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Full_payment_not_received_and_21_days_have_passed_alert_Mbmr</name>
                <type>Alert</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Full_payment_not_received_and_7_days_have_passed_alert_Mmbr</name>
                <type>Alert</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Full_payment_not_received_and_14_days_have_passed_alert_Mbmr</name>
                <type>Alert</type>
            </actions>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Full payment not received - Prospect</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Record_Type_Name__c</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>For email notification to inform &quot;Full payment not received&quot; for prospect members</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Full_payment_not_received_and_30_days_have_passed_alert</name>
                <type>Alert</type>
            </actions>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Full_payment_not_received_and_21_days_have_passed_alert</name>
                <type>Alert</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Full_payment_not_received_and_7_days_have_passed_alert</name>
                <type>Alert</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>KG Initial Opp created</fullName>
        <actions>
            <name>KG_set_Opportunity_end_date_to_end_of_FY</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>KG_set_Opportunity_start_to_start_of_FY</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Used to (a) set Opp Contract Effective Date to start of FY (July 1) and (b) set Opp Contract End Date to end of FY (June 30), or end of next FY if Q4.</description>
        <formula>ISBLANK(KGRenewal__PreviousSale__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KG Opp has remaining installments</fullName>
        <actions>
            <name>KG_decrement_Opp_remaining_installments</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Remaining Installments &gt; 0 (for Lifetime Dues products)</description>
        <formula>AND(NOT(ISBLANK(Remaining_Installments__c)), Remaining_Installments__c &gt; 0)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Notify Chapter of New Member</fullName>
        <actions>
            <name>Notify_Chapter_of_New_Member</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Notify_Chapter_of_Neww_Member_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type__c</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Workflow launching notification of CA, CMO, CC of chapter of a new member</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Upsert</fullName>
        <actions>
            <name>Opportunity_Upsert</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Populate with Enterprise Value %28Corporation Value%29 from Account</fullName>
        <actions>
            <name>Populate_Enterprise_Value_Corporation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This WR will poulate &apos;Enterprise Value (Corporation Value)&apos; on Opportunity with value from &apos;Enterprise Value (Corporation Value)&apos; on Account</description>
        <formula>NOT(ISNULL(Account.Enterprise_Value__c ))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Reset Opp Name</fullName>
        <actions>
            <name>Opportunity_Reset_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>lessThan</operation>
            <value>80</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>SetContractEndDate</fullName>
        <actions>
            <name>SetContractEndDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>KGRenewal__PreviousSale__c = NULL</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Third Party Verification Received</fullName>
        <actions>
            <name>Stamp_Verification_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Certification_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Third_Party_Approval__c</field>
            <operation>equals</operation>
            <value>Approved,Rejected</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Transition Certification Status</fullName>
        <actions>
            <name>Certification_to_Complete</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Transition_Flag__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Transition_Via_Renewal_Form__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Update Certification Status on opportunity to &apos;complete&apos; once the two transition flags on opportunity are checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Active Cart to False</fullName>
        <actions>
            <name>Update_Active_Cart_to_False</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.KGRenewal__IsActiveCart__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>As KG clones previous record, in the scenario a prospect goes to (Third Party) Validated Active Cart will be updated to true. This will also be cloned across to the next renewal opportunity. This workflow will update back to False.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Opportunity Name</fullName>
        <actions>
            <name>Update_Lead_Opportunity_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Updates Lead Opportunity name. This is so the custom lead field formula can map to the correct field.</description>
        <formula>ISCHANGED( Lead_Oppty_Name_Long__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Local Chapter Dues Paid field</fullName>
        <actions>
            <name>Update_Local_Chapter_Dues_Paid_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Is_Paid_Local_Chapter_Dues__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updates field ‘Local_Chapter_Dues_Paid__c’ with date TODAY() when CA checks Is_Paid_Local_Chapter_Dues__c.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Opportunity Stage to Closed Won %28Deprecated%29</fullName>
        <actions>
            <name>Opportunity_to_Closed_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>contains</operation>
            <value>Complete,Validated</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Received</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Grace_Status__c</field>
            <operation>contains</operation>
            <value>No Grace Needed,Approved</value>
        </criteriaItems>
        <description>when a record is created, and any time it&apos;s edited to subsequently meet criteria</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Opportunity health when Opporutnity Stage is Payment Pending</fullName>
        <actions>
            <name>Update_Opportunity_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>This time base  Workflow updates the Opportunity Health field when  Opporutnity Stage = Payment Pending.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Opportunity_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Opportunity_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Prospect Cart to Active</fullName>
        <actions>
            <name>Update_Prospect_Cart_to_Active</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>equals</operation>
            <value>Validated</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <description>This rule will update the Prospect&apos;s cart to Active. It will not work for Members as this will be done via batch process each year.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Stage to %27Closed Won%27 %28Deprecated%29</fullName>
        <actions>
            <name>Update_to_Closed_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Member</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>equals</operation>
            <value>Complete,Received</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Received</value>
        </criteriaItems>
        <description>Stage will be updated to &apos;Closed Won&apos;, if Stage is &apos;Payment Received&apos; and Certification Status is either &apos;Received&apos; or &apos;Complete&apos;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update to Third Party Certify</fullName>
        <actions>
            <name>Update_Opp_Stage_to_3rdPartyCert</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Certification_Status__c</field>
            <operation>equals</operation>
            <value>Complete</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Welcome Call Email From Globalringer - Europe Asia Africa</fullName>
        <actions>
            <name>Email_Alert_Welcome_Europe_Asia_AFrica</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Welcome_Call_Email_Sent_Box</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Welcome_Call_Email_From_Globalringer_Europe_Asia_Africa_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 3 AND 4 AND (2 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type__c</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Region__c</field>
            <operation>equals</operation>
            <value>Middle East / North Africa,North Asia,Southeast Asia,Europe,South Asia,Australia / New Zealand,Africa</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Welcome_Call_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Received</value>
        </criteriaItems>
        <description>An automatic welcome email, notification when membership starts for Europe, North Asia, South Asia, Southeast Asia, Africa, Middle East and Northern Africa, and Australia and New Zealand</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Welcome Call Email From Globalringer - Latin West Pac</fullName>
        <actions>
            <name>Email_Alert_Latin_America_Western_Pacific</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Welcome_Call_Email_Sent_Box</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Welcome_Call_Email_From_Globalringer_Latin_West_Pac_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 3 AND 4 AND (2 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type__c</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Region__c</field>
            <operation>equals</operation>
            <value>Latin America,Pacific US,Western US</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Welcome_Call_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Received</value>
        </criteriaItems>
        <description>An automatic welcome email, notification when membership starts: Latin America,Pacific US,Western US</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Welcome Call Email From Globalringer - NEUS</fullName>
        <actions>
            <name>Email_NEUS_SEC_Cen_EC_CA</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Welcome_Call_Email_Sent_Box</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Welcome_Call_Email_From_Globalringer_NEUS_Sent</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 3 AND 4 AND (2 OR 5)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type__c</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Region__c</field>
            <operation>equals</operation>
            <value>Southeast US and Caribbean,Northeastern US,Central US,East Central US,Canada</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Welcome_Call_Email_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Payment Received</value>
        </criteriaItems>
        <description>An automatic welcome email, notification when membership starts for Northeast US, Southeast US, Central, East Central, and Canada</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>YNG%2B Notifications to Member and Child that Closed Won</fullName>
        <actions>
            <name>YNG_Notifications_to_Member_and_Child_Closed_Won_alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Send Automated YNG+ Notifications to Member and Child (if applicable). need	
to automatically send a member who enrolls a child in YNG+ and the child who has been enrolled automatic notifications
So that to share more information with them immediate</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Full_payment_not_received_and_21_days_have_passed_alert_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Full payment not received and 21 days have passed alert - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Full_payment_not_received_and_30_days_have_passed_alert_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Full payment not received and 30 days have passed alert - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Full_payment_not_received_and_7_days_have_passed_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Full payment not received and 7 days have passed - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Notify_Chapter_of_New_Member_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Notify Chapter of New Member - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Notify_Chapter_of_Neww_Member_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Notify Chapter of New Member - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Welcome_Call_Email_From_Globalringer_Europe_Asia_Africa_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Welcome Call Email From Globalringer - Europe Asia Africa - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Welcome_Call_Email_From_Globalringer_Latin_West_Pac_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Welcome Call Email From Globalringer - Latin West Pac - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Welcome_Call_Email_From_Globalringer_NEUS</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Welcome Call Email From Globalringer - NEUS</subject>
    </tasks>
    <tasks>
        <fullName>Welcome_Call_Email_From_Globalringer_NEUS_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Welcome Call Email From Globalringer - NEUS - Sent</subject>
    </tasks>
</Workflow>
