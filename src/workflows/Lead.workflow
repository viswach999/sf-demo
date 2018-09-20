<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_to_CA_CC_and_CMO</fullName>
        <description>Email to CA, CC and CMO</description>
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
        <template>Membership_Development/Lead_Assigned_to_Chapter_14_Days_passed_And_Not_Pursued</template>
    </alerts>
    <alerts>
        <fullName>No_Activity_Email_to_CA_CC_and_CMO_after_21_days</fullName>
        <description>No Activity Email to CA, CC and CMO after 21 days</description>
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
        <template>Membership_Development/No_Activity_Email_to_CA_CC_and_CMO_after_21_days</template>
    </alerts>
    <alerts>
        <fullName>Notification_for_Chapter_that_Lead_is_Pending_alert</fullName>
        <description>Notification for Chapter that Lead is Pending alert</description>
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
        <template>Membership_Development/Prospect_Pending_Chapter_Review</template>
    </alerts>
    <alerts>
        <fullName>Notify_Chapter_when_3rd_Party_verification_requested_but_7_days_have_passed</fullName>
        <description>Notify Chapter when 3rd Party verification requested but 7 days have passed</description>
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
        <template>unfiled$public/X3rd_Party_Verification_Request_7_days_no_reply</template>
    </alerts>
    <alerts>
        <fullName>Notify_Prospect_Assigned_to_Chapter_alert</fullName>
        <description>Notify Prospect - Assigned to Chapter alert</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Notify_Prospect_Assigned_to_Chapter</template>
    </alerts>
    <alerts>
        <fullName>Notify_Prospect_Of_Application_Status_alert</fullName>
        <description>Notify Prospect Of Application Status alert</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Notify_Prospect_Of_Application_Status</template>
    </alerts>
    <alerts>
        <fullName>Notify_Prospect_when_the_3rd_Party_has_not_replied_after_7_days_alert</fullName>
        <description>Notify Prospect when the 3rd Party has not replied after 7 days alert</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/X3rd_Party_Verification_Request_7_days_no_reply_Prospect</template>
    </alerts>
    <alerts>
        <fullName>Reminder_for_Not_approved_3rd_Party_verification_accepted_prospect</fullName>
        <description>Reminder for Not approved 3rd Party verification accepted prospect</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/X3rd_Party_verification_accepted_CMO_and_CC_have_not_approved_10_days</template>
    </alerts>
    <alerts>
        <fullName>Reminder_to_CC_CMO_and_CA</fullName>
        <description>Reminder to CC CMO and CA</description>
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
        <template>unfiled$public/X3rd_Party_verification_not_approved_by_CMO_and_CC_7_days</template>
    </alerts>
    <alerts>
        <fullName>Send_Notification_to_Queue_Members</fullName>
        <description>Send Notification to Queue Members</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderAddress>joinypo@ypo.org</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Membership_Development/Prospect_to_Membership_Development_queue</template>
    </alerts>
    <fieldUpdates>
        <fullName>Assign_Prospect_to_Development_Queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Membership_Development</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Assign Prospect to Development Queue</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Awaiting_Chapter_Approval_Update_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today.</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Awaiting Chapter Approval Update Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Chap_Approval_Requested</fullName>
        <field>Status</field>
        <literalValue>Awaiting Chapter Approval</literalValue>
        <name>Chap Approval Requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Closed_Converted_Updates_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Closed - Converted Updates Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Closed_Existing_Contact_Update_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Closed - Existing Contact Update Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Closed_Unqualified_Update_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Closed - Unqualified Update Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Initial_Qualifying_Update_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today.</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Initial Qualifying Update Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lead_Status_to_Ready_to_Convert</fullName>
        <field>Status</field>
        <literalValue>Ready to Convert</literalValue>
        <name>Lead Status to &apos;Ready to Convert&apos;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>New_Updates_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>New Updates Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Ready_to_convert_Updates_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today.</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Ready to convert Updates Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejected_Updates_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today.</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Rejected Updates Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stamp_DOB_doc_and_3rd_Party_fields</fullName>
        <field>DOB_doc_and_3rd_Party_Info_complete__c</field>
        <literalValue>1</literalValue>
        <name>Stamp DOB doc and 3rd Party fields</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Third_Party_Rejected</fullName>
        <description>This is supposed to update off of the &apos;Third Party Approved field&apos;</description>
        <field>Verify_3rd_Party_Status__c</field>
        <literalValue>Received</literalValue>
        <name>Update Third Party Status to Received</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_3rd_Party_Verification_7_days</fullName>
        <description>Unchecks X3rd_Party_Verification_7_days_No_Reply Checkbox field on Lead object,when lead Verify_3rd_Party_Status__c = ‘Received’</description>
        <field>X3rd_Party_Verification_7_days_No_Reply__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck 3rd Party Verification 7 days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unverified_Updates_Date</fullName>
        <description>Updates &quot;Date of Last Status Change&quot; with Today.</description>
        <field>Date_of_Last_Status_Change__c</field>
        <formula>TODAY()</formula>
        <name>Unverified Updates Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_3rd_Party_Verification_7_days</fullName>
        <description>Checks X3rd_Party_Verification_7_days_No_Reply Checkbox field on Lead object after 7 days of rule trigger date</description>
        <field>X3rd_Party_Verification_7_days_No_Reply__c</field>
        <literalValue>1</literalValue>
        <name>Update 3rd Party Verification 7 days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Awaiting_Chapter_Approval</fullName>
        <description>Update &quot;Days in Awaiting Chapter Approval Status&quot; with lead age(number of days) in Awaiting Chapter Approval Status</description>
        <field>Days_in_Awaiting_Chapter_Approval_Status__c</field>
        <formula>Days_in_Awaiting_Chapter_Approval_Status__c  +(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Awaiting Chapter Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Closed_Converted_Status</fullName>
        <description>Update &quot;Days in Closed - Converted Status&quot; with lead age(number of days) in Closed - Converted Status</description>
        <field>Days_in_Closed_Converted_Status__c</field>
        <formula>Days_in_Closed_Converted_Status__c +(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Closed - Converted Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Closed_Existing_Contact</fullName>
        <description>Update &quot;Days in Closed - Existing Contact Status&quot; with lead age(number of days) in Closed - Existing Contact Status</description>
        <field>Days_in_Closed_Existing_Contact_Status__c</field>
        <formula>Days_in_Closed_Existing_Contact_Status__c +(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Closed - Existing Contact</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Closed_Unqualified_Stat</fullName>
        <description>Update &quot;Days in Closed - Unqualified Status&quot; with lead age(number of days) in Closed - Unqualified Status</description>
        <field>Days_in_Closed_Unqualified_Status__c</field>
        <formula>Days_in_Closed_Unqualified_Status__c +(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Closed - Unqualified Stat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Initial_Qualifying_Status</fullName>
        <description>Update &quot;Days in Initial Qualifying Status&quot; with lead age(number of days) in Initial Qualifying Status</description>
        <field>Days_in_Initial_Qualifying_Status__c</field>
        <formula>Days_in_Initial_Qualifying_Status__c +(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Initial Qualifying Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_New_Status</fullName>
        <description>Update &quot;Days in New Status&quot; with lead age(number of days) in New Status</description>
        <field>Days_in_New_Status__c</field>
        <formula>Days_in_New_Status__c +(Today() -  Date_of_Last_Status_Change__c  )</formula>
        <name>Update Days in New Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Ready_to_Convert_Status</fullName>
        <description>Update &quot;Days in Ready to Convert Status&quot; with lead age(number of days) in Ready to Convert Status</description>
        <field>Days_in_Ready_to_Convert_Status__c</field>
        <formula>Days_in_Ready_to_Convert_Status__c +(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Ready to Convert Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Rejected_Status</fullName>
        <description>Update &quot;Days in Rejected Status&quot; with lead age(number of days) in Rejected Status</description>
        <field>Days_in_Rejected_Status__c</field>
        <formula>Days_in_Rejected_Status__c +(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Rejected Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_in_Unverified_Status</fullName>
        <description>Update &quot;Days in Unverified Status&quot; with lead age(number of days) in Unverified Status</description>
        <field>Days_in_Unverified_Status__c</field>
        <formula>Days_in_Unverified_Status__c+(Today() - Date_of_Last_Status_Change__c )</formula>
        <name>Update Days in Unverified Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Health_to_Green</fullName>
        <field>Lead_Health__c</field>
        <literalValue>Green</literalValue>
        <name>Update Lead Health to Green</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Health_to_Red</fullName>
        <field>Lead_Health__c</field>
        <literalValue>Red</literalValue>
        <name>Update Lead Health to Red</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Health_to_Yellow</fullName>
        <field>Lead_Health__c</field>
        <literalValue>Yellow</literalValue>
        <name>Update Lead Health to Yellow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Status_to_Initial_Qualifying</fullName>
        <field>Status</field>
        <literalValue>Initial Qualifying</literalValue>
        <name>Update Lead Status to Initial Qualifying</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Status_to_Ready_to_Convert</fullName>
        <field>Status</field>
        <literalValue>Ready to Convert</literalValue>
        <name>Update Lead Status to Ready to Convert</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Notify_Prospect_Assigned_to_Chapt</fullName>
        <field>Notify_Prospect_Assigned_to_Chapter_Sent__c</field>
        <literalValue>1</literalValue>
        <name>Update Notify Prospect-Assigned to Chapt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opp_QualComp_Address</fullName>
        <description>Updates Opportunity Qualifying Company Address for DocuSign</description>
        <field>Opportunity_Billing_Address__c</field>
        <formula>Street &amp; BR()&amp;
City &amp; &quot;, &quot; &amp; State &amp; &quot; &quot; &amp; PostalCode&amp;    BR()  &amp;
Country</formula>
        <name>Update Opp QualComp Address</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Owner_to_Membership_Development_Q</fullName>
        <description>THIS FIELD UPDATE SHOULD BE DEPRECATED AS IT IS REDUNDANT WITH: https://ypo--bwdev1.cs52.my.salesforce.com/04Y5B0000004D0d</description>
        <field>OwnerId</field>
        <lookupValue>Membership_Development</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Update Owner to Membership Development Q</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Target_chapter_change_date</fullName>
        <description>This action captures the date on which target chapter is changes on lead</description>
        <field>Target_Chapter_Change_Date__c</field>
        <formula>DATEVALUE( LastModifiedDate )</formula>
        <name>Update Target chapter change date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Waiver_Requested_Checkbox_False</fullName>
        <field>Waiver_Requested__c</field>
        <literalValue>0</literalValue>
        <name>Update Waiver Requested Checkbox = False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Waiver_status_Requested</fullName>
        <field>Waiver_Status__c</field>
        <literalValue>Requested</literalValue>
        <name>Update Waiver status to Requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Waiver_status_to_Requested</fullName>
        <field>Waiver_Status__c</field>
        <literalValue>Requested</literalValue>
        <name>Update Waiver status to Requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>X3rd_Party_Status_to_Requested</fullName>
        <field>Verify_3rd_Party_Status__c</field>
        <literalValue>Requested</literalValue>
        <name>3rd Party Status to Requested</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_lead_rejection_date_field</fullName>
        <field>Lead_Rejection_Date__c</field>
        <formula>TODAY()</formula>
        <name>update lead rejection date field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign prospect to Membership Development queue</fullName>
        <actions>
            <name>Send_Notification_to_Queue_Members</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Assign_Prospect_to_Development_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Is_Suitable_for_Another_Chapter__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This Workflow Rule will trigger if  &apos;Is_Suitable_for_Another_Chapter__c&quot; is checked</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Capture Target Chapter Change Date</fullName>
        <actions>
            <name>Update_Target_chapter_change_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow rule captures date on which target chapter is changed on Lead.</description>
        <formula>AND(ISNEW(),NOT(ISBLANK( Referred_by_Chapter__c ))) ||  ISCHANGED(Referred_by_Chapter__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Chapter Approval Requested</fullName>
        <actions>
            <name>Chap_Approval_Requested</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Chapter_Approval_Requested_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Chapter Notification for Pending Lead</fullName>
        <actions>
            <name>Notification_for_Chapter_that_Lead_is_Pending_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Initial Qualifying</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Notify_Prospect_Assigned_to_Chapter_Sent__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This workflow rule sends email to CA, CC and CMO after 14 days when Lead Status = Initial Qualifying and Pursue Status = Pending</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Email_to_CA_CC_and_CMO</name>
                <type>Alert</type>
            </actions>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Create Opp Billing Address</fullName>
        <actions>
            <name>Update_Opp_QualComp_Address</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This is for mapping to Opportunity for DocuSign</description>
        <formula>NOT(ISNULL(Street ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>DOB Doc and 3rd Party Fields Received</fullName>
        <actions>
            <name>Stamp_DOB_doc_and_3rd_Party_fields</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND ( NOT(ISBLANK( X3rd_Party_Name__c )), NOT(ISBLANK( X3rd_Party_Email__c )) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Days in Awaiting Chapter Approval%09 status</fullName>
        <actions>
            <name>Awaiting_Chapter_Approval_Update_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Awaiting_Chapter_Approval</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Awaiting Chapter Approval status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Awaiting Chapter Approval status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Awaiting Chapter Approval&quot;), NOT(ISPICKVAL(Status,&quot;Awaiting Chapter Approval&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in Closed - Converted status</fullName>
        <actions>
            <name>Closed_Converted_Updates_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Closed_Converted_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Closed - Converted status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Closed - Converted status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Closed - Converted&quot;), NOT(ISPICKVAL(Status,&quot;Closed - Converted&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in Closed - Existing Contact status</fullName>
        <actions>
            <name>Closed_Existing_Contact_Update_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Closed_Existing_Contact</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Closed - Existing Contact status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Closed - Existing Contact status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Closed - Existing Contact&quot;), NOT(ISPICKVAL(Status,&quot;Closed - Existing Contact&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in Closed - Unqualified status</fullName>
        <actions>
            <name>Closed_Unqualified_Update_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Closed_Unqualified_Stat</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Closed - Unqualified status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Closed - Unqualified lead status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Closed - Unqualified&quot;), NOT(ISPICKVAL(Status,&quot;Closed - Unqualified&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in Initial Qualifying status</fullName>
        <actions>
            <name>Initial_Qualifying_Update_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Initial_Qualifying_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Initial Qualifying status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Initial Qualifying status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Initial Qualifying&quot;), NOT(ISPICKVAL(Status,&quot;Initial Qualifying&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in New status</fullName>
        <actions>
            <name>New_Updates_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_New_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in New status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in New status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;New&quot;), NOT(ISPICKVAL(Status,&quot;New&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in Ready to Convert status</fullName>
        <actions>
            <name>Ready_to_convert_Updates_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Ready_to_Convert_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Ready to Convert status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Ready to Convert status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Ready to Convert&quot;), NOT(ISPICKVAL(Status,&quot;Ready to Convert&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in Rejected status</fullName>
        <actions>
            <name>Rejected_Updates_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Rejected_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Rejected status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Rejected status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Rejected&quot;), NOT(ISPICKVAL(Status,&quot;Rejected&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Days in Unverified status</fullName>
        <actions>
            <name>Unverified_Updates_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Days_in_Unverified_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates value in &quot;Days in Unverified status&quot; and &quot;date of last status change&quot;, in-order to get age of lead in Unverified status</description>
        <formula>AND( ISPICKVAL(PRIORVALUE(Status),&quot;Unverified&quot;), NOT(ISPICKVAL(Status,&quot;Unverified&quot;)) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email when No Activity or Task has been created on the Lead AND Pursue Status %3D Pursue False</fullName>
        <active>false</active>
        <description>This workflow rule is created to send an Email alert to CA, CC and CMO  based on below criteria : 
Pursue Status = Pursue
LastActivityDate = Today()(Chapter_Health_Activity_Boolean__c = False
)</description>
        <formula>AND( ISPICKVAL( Pursue_Status__c, &quot;Will Pursue&quot;), Chapter_Health_Activity_Boolean__c = False, TEXT(Status) &lt;&gt;&apos;Ready to Convert&apos;, TEXT(Status) &lt;&gt;&apos;Closed - Converted&apos;,TEXT(Status) &lt;&gt;&apos;Closed - Unqualified&apos;, TEXT(Status) &lt;&gt;&apos;Closed - Existing Contact&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>No_Activity_Email_to_CA_CC_and_CMO_after_21_days</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Email_when_No_Activity_or_Task_has_been_created_on_the_Lead_AND_Pursue_Status_Pu</name>
                <type>Task</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Email when No Activity or Task has been created on the Lead AND Pursue Status %3D Pursue True</fullName>
        <active>false</active>
        <description>This workflow rule is created to send an Email alert to CA, CC and CMO  based on below criteria : 
Pursue Status = Pursue
LastActivityDate = Today()</description>
        <formula>AND( ISPICKVAL( Pursue_Status__c, &quot;Will Pursue&quot;), Chapter_Health_Activity_Boolean__c = True, TEXT(Status) &lt;&gt;&quot;Ready to Convert&quot;, TEXT(Status) &lt;&gt;&quot;Closed - Converted&quot;,TEXT(Status) &lt;&gt;&apos;Closed - Unqualified&apos;, TEXT(Status) &lt;&gt;&apos;Closed - Existing Contact&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>No_Activity_Email_to_CA_CC_and_CMO_after_21_days</name>
                <type>Alert</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead 3rd Party Verification Received</fullName>
        <actions>
            <name>Uncheck_3rd_Party_Verification_7_days</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Verify_3rd_Party_Status__c</field>
            <operation>equals</operation>
            <value>Received</value>
        </criteriaItems>
        <description>Lead &quot;verify 3rd Party status= Received&quot;, WFR unchecks the &quot;3rd Party Verification 7 days No Reply&quot; checkbox on lead Object</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead 3rd Party Verification requested</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Initial Qualifying</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Pursue</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Verify_3rd_Party_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <description>This workflow rule will check&quot;3rd Party Verification 7 days No Reply&quot; field on Lead after 7 days of rule trigger date.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_3rd_Party_Verification_7_days</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead Status to %27Ready to Convert%27</fullName>
        <actions>
            <name>Lead_Status_to_Ready_to_Convert</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow will update the lead status to &apos;Ready to Convert&apos;.</description>
        <formula>(AND(NumberOfEmployees &gt;=$Setup.QS__c.Up_Min_Empl__c, Deprecated_Is_True_No_Employees__c=true)|| AND(NumberOfEmployees &gt;=$Setup.QS__c.Low_Min_Empl__c , Deprecated_Is_True_No_Employees__c=true, Tot_Empl_Comp__c &gt;= $Setup.QS__c.Tot_Empl_Comp__c, Deprecated_Is_True_Employee_Compensation__c=true))&amp;&amp; (((OR(ISPICKVAL(Corp_Type__c,&quot;Sales&quot;),ISPICKVAL(Corp_Type__c,&quot;Service&quot;),ISPICKVAL(Corp_Type__c,&quot;Manufacturing&quot;)&amp;&amp; AnnualRevenue &gt;=$Setup.QS__c.Ann_Rev_Sales__c)|| (ISPICKVAL(Corp_Type__c,&quot;Financial Institution&quot;)&amp;&amp; AnnualRevenue&gt;= $Setup.QS__c.Ann_Rev_Financial__c)||(ISPICKVAL(Corp_Type__c,&quot;Agency-type&quot;)&amp;&amp; AnnualRevenue&gt;=$Setup.QS__c.Ann_Rev_Agency__c) &amp;&amp; Deprecated_Is_True_Annual_Revenue__c =true))|| Ent_Val__c &gt;= $Setup.QS__c.Ent_Val__c &amp;&amp; Deprecated_Is_True_Enterprise_Value__c=true)&amp;&amp; (LEN(Title)&gt; 1 &amp;&amp; Deprecated_Is_True_Title__c =true)&amp;&amp; (NOT(ISNULL(Birthdate__c)) &amp;&amp; Deprecated_Is_True_Birthdate__c =true)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New Lead%3A Waiver Requested</fullName>
        <actions>
            <name>New_Lead_Waiver_Requested</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Waiver_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <description>This workflow rule assigns Task to Joyce when Lead Waiver status is changed to &apos;Requested&apos; by lead owner.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify Prospect - Assigned to Chapter</fullName>
        <actions>
            <name>Notify_Prospect_Assigned_to_Chapter_alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Notify_Prospect_Assigned_to_Chapt</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Initial Qualifying</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Target_Chapter_ID__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Notify_Prospect_Assigned_to_Chapter_Sent__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Email Notifications to the Prospect when The lead has been assigned to a chapter ,Lead Status = Initial Qualifying and Pursue Status = Pending</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify Prospect Of Application Status</fullName>
        <actions>
            <name>Notify_Prospect_Of_Application_Status_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Awaiting Chapter Approval</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Pursue</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Verify_3rd_Party_Status__c</field>
            <operation>equals</operation>
            <value>Validated</value>
        </criteriaItems>
        <description>The 3rd Party verification has been received and accepted, will pursue, 3rd Party Status = Validated, and Awaiting Chapter Approval</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify Prospect when the 3rd Party has not replied after 7 days</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Initial Qualifying</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Pursue</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Verify_3rd_Party_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <description>The Chapter has requested 3rd Party verification but 7 days have passed and the 3rd party has not replied.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Notify_Chapter_when_3rd_Party_verification_requested_but_7_days_have_passed</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Notify_Prospect_when_the_3rd_Party_has_not_replied_after_7_days_alert</name>
                <type>Alert</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Owner to Membership Development Queue</fullName>
        <actions>
            <name>Send_Notification_to_Queue_Members</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Assign_Prospect_to_Development_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Not Pursue</value>
        </criteriaItems>
        <description>This WR will update owner of lead to &apos;Membership Development&apos; Queue when Pursue Status changes to &apos;Will Not Pursue&apos;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Ready to Convert Chapter Approval</fullName>
        <actions>
            <name>Update_Lead_Status_to_Ready_to_Convert</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.CMO_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.CC_Approval__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Ready to Convert Queue Update</fullName>
        <actions>
            <name>Assign_Prospect_to_Development_Queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Ready to Convert</value>
        </criteriaItems>
        <description>Once the lead status is updated to &quot;Ready to Convert&quot; the ownership should be changed to the MTM Queue</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Reminder for Not approved 3rd Party verification accepted prospect</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Awaiting Chapter Approval</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Pursue</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Verify_3rd_Party_Status__c</field>
            <operation>equals</operation>
            <value>Validated</value>
        </criteriaItems>
        <description>This email sends an Email to prospect for reminder after 10 days , if the Lead Status = Awaiting Chapter Approval, Pursue Status = Pursue, 3rd Party Status = Validated Also This workflow updates &apos;Lead Health&apos; field based on Lead&apos;s Age in above statuses.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Reminder_for_Not_approved_3rd_Party_verification_accepted_prospect</name>
                <type>Alert</type>
            </actions>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Reminder_to_CC_CMO_and_CA</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Third Party Received</fullName>
        <actions>
            <name>Third_Party_Rejected</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Third_Party_Approved__c</field>
            <operation>equals</operation>
            <value>Disagree,Agree</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Time spent by a New prospect unassigned to a chapter</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Target_Chapter_ID__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Based on Lead Status, Target Chapter and Pursue Status this workflow rule will update Lead Health</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Lead Health</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Initial Qualifying</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Pursue</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Verify_3rd_Party_Status__c</field>
            <operation>equals</operation>
            <value>Requested</value>
        </criteriaItems>
        <description>This WF will trigger when Lead Status is &quot;Initial Qualifying&quot; , Pursue Status is &quot;Will  Persue&quot; and Verify 3rd Party Status is &quot;Requested&quot; and updates the Lead Health value.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Lead Health when No Activity or Task has been created on the Lead False</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND( ISPICKVAL( Status , &quot;Initial Qualifying&quot;), ISPICKVAL( Pursue_Status__c, &quot;Will Pursue&quot;), ISPICKVAL( Verify_3rd_Party_Status__c , &apos;Incomplete&apos;),  Chapter_Health_Activity_Boolean__c = False )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>29</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Lead Health when No Activity or Task has been created on the Lead True</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This workflow rule is created to update the Lead Health field based on below criteria : 
Lead Status = Initial Qualifying, Pursue Status = Pursue,Verify 3rd Party Status = Blank
LastActivityDate = Today()</description>
        <formula>AND( ISPICKVAL( Status , &quot;Initial Qualifying&quot;), ISPICKVAL( Pursue_Status__c, &quot;Will Pursue&quot;), ISPICKVAL( Verify_3rd_Party_Status__c , &apos;Incomplete&apos;),  Chapter_Health_Activity_Boolean__c = True )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>29</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update Lead Status to Initial Qualifying</fullName>
        <actions>
            <name>Update_Lead_Status_to_Initial_Qualifying</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Pursue</value>
        </criteriaItems>
        <description>Upon setting Pursue Status = Pursue, set Lead Status = Initial Qualifying</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead health when Pursue Status is Blank and Lead Status is Unverified</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Unverified</value>
        </criteriaItems>
        <description>This workflow rule updates Lead health when Pursue Status is &quot;Blank&quot; and Lead Status is &quot;Unverified&quot;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>3</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Update lead rejection date field when the lead status changes to Rejected</fullName>
        <actions>
            <name>update_lead_rejection_date_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <description>Update lead rejection date field on lead object when the lead status changes to &apos;Rejected&apos;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Visibility into chapters%27 workings of prospects</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Initial Qualifying</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <description>Based on value of fields Lead Status and Pursue Status, this workflow rule will update Lead Health value</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Visual indicator of when a chapter has decided not to pursue</fullName>
        <actions>
            <name>Update_Lead_Health_to_Green</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Initial Qualifying</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Pursue_Status__c</field>
            <operation>equals</operation>
            <value>Will Not Pursue</value>
        </criteriaItems>
        <description>Based on value of fields Lead Status and Pursue Status, this workflow rule will update Lead Health value</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Red</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Lead_Health_to_Yellow</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Waiver Requested</fullName>
        <actions>
            <name>Update_Waiver_status_Requested</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Waiver_Requested_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Chapter_Notification_for_Pending_Lead_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Chapter Notification for Pending Lead - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_whe3n_No_Activity_or_Task_has_been_created_on_the_Lead_AND_Pursue_Status_P</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email when No Activity or Task has been created on the Lead AND Pursue Status = Pursue True - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Email_when_No_Activity_or_Task_has_been_created_on_the_Lead_AND_Pursue_Status_Pu</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Email when No Activity or Task has been created on the Lead AND Pursue Status = Pursue False - Sent</subject>
    </tasks>
    <tasks>
        <fullName>New_Lead_Waiver_Requested</fullName>
        <assignedTo>lsmith@ypo.org.prod</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Open</status>
        <subject>New Lead: Waiver Requested</subject>
    </tasks>
    <tasks>
        <fullName>Notify_Prospect_Assigned_to_Chapter_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Notify Prospect - Assigned to Chapter - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Notify_Prospect_Of_Application_Status_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Notify Prospect Of Application Status - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Notify_Prospect_and_Chapter_when_the_3rd_Party_has_not_replied_after_7_days_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Notify Prospect and Chapter when the 3rd Party has not replied after 7 days - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Reminder_for_Not_approved_3rd_Party_verification_accepted_prospect_10_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Reminder for Not approved 3rd Party verification accepted prospect 10 - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Reminder_for_Not_approved_3rd_Party_verification_accepted_prospect_7_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Reminder for Not approved 3rd Party verification accepted prospect 7 - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Reminder_for_Not_approved_3rd_Party_verification_accepted_prospect_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Reminder for Not approved 3rd Party verification accepted prospect - Sent</subject>
    </tasks>
    <tasks>
        <fullName>Send_Notification_to_Queue_Members_Sent</fullName>
        <assignedTo>datamigr@ypowpo.org</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Send Notification to Queue Members - Sent</subject>
    </tasks>
</Workflow>
