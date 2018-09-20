<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Chapter_Retention</fullName>
        <field>Pct_Chapter_Retention__c</field>
        <formula>CASE(Account__r.YPOI_Type__c,
     &quot;YPO Chapter&quot;, IF(Account__r.Is_Integrated__c = TRUE,
                       IF((Members_Prev_FY_Over_50__c + Members_Prev_FY_Under_50__c) = 0, 100, 
                          (Number_Primary_Members_Current__c + Number_Secondary_Members_Current__c) 
                          / (Members_Prev_FY_Over_50__c + Members_Prev_FY_Under_50__c)),
                       IF(Members_Prev_FY_Under_50__c = 0, 100, 
                          (Number_Primary_Members_Current__c + Number_Secondary_Members_Current__c) 
                          / Members_Prev_FY_Under_50__c)
                    ),
     &quot;YPO Gold Chapter&quot;, IF((Members_Prev_FY_Over_50__c + Members_Prev_FY_Under_50__c) = 0, 100, 
                            (Number_Primary_Members_Current__c + Number_Secondary_Members_Current__c) 
                            / (Members_Prev_FY_Over_50__c + Members_Prev_FY_Under_50__c)
                         ),
NULL)</formula>
        <name>Update Chapter Retention</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Chapter_Retention_grad_class</fullName>
        <field>Chapter_retention_plus_graduate_class__c</field>
        <formula>IF(Account__r.Is_Integrated__c = TRUE || ISPICKVAL(Account__r.YPOI_Type__c, &apos;YPO Gold Chapter&apos;),
   NULL,
   IF((Members_Prev_FY_Over_50__c + Members_Prev_FY_Under_50__c) = 0, 100, 
      (Number_Primary_Members_Current__c + Number_Secondary_Members_Current__c) 
      / (Members_Prev_FY_Over_50__c + Members_Prev_FY_Under_50__c))
)</formula>
        <name>Update Chapter Retention (grad. class)</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Overall_Health_Score</fullName>
        <field>Overall_Health_Score__c</field>
        <formula>IF(
    AND(
        Chapter_Ed_Chair_Identified__c = TRUE,
        Total_Number_Chapter_Events__c &gt;= 4,
        IF(
            ISPICKVAL(Account__r.YPOI_Type__c, &apos;YPO Gold Chapter&apos;), 
            Number_Pri_Sec_Members__c &gt;= 16, 
            Number_Primary_Members_Current__c &gt;= 16
        )
    ),
    IF(Health_Score__c &gt;= 18, &apos;Platinum&apos;,
        IF(Health_Score__c &gt;= 9, &apos;Silver&apos;, &apos;Bronze&apos;)
    ),
    &apos;This chapter does not meet the minimum standards&apos;
)</formula>
        <name>Update Overall Health Score</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_YPO_WPO</fullName>
        <field>YPO_WPO__c</field>
        <literalValue>WPO</literalValue>
        <name>Update YPO/WPO</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Chapter_Health_Upserted</fullName>
        <apiVersion>40.0</apiVersion>
        <description>Any time Chapter Health created or updated.</description>
        <endpointUrl>https://services1.ypowpo.org/Salesforce/ChapterHealthService.svc</endpointUrl>
        <fields>Account__c</fields>
        <fields>Av_Member_Event_Attend_Current__c</fields>
        <fields>Chapter_Administrator_attendance_at_CAW__c</fields>
        <fields>Chapter_Ed_Chair_Identified__c</fields>
        <fields>Chapter_event_participation__c</fields>
        <fields>Chapter_represented_at_RBM_past_fiscal_Y__c</fields>
        <fields>Chapter_retention_rate__c</fields>
        <fields>Complete_member_profile_on_Exchange__c</fields>
        <fields>Completed_Member_Profiles__c</fields>
        <fields>CreatedDate</fields>
        <fields>Current_Annual_Chapter_Strategic_Plan__c</fields>
        <fields>Elect_CC_and_3_more_Officers_by_1_Nov__c</fields>
        <fields>GLC_or_CLW_attendance__c</fields>
        <fields>GUID__c</fields>
        <fields>Health_Score__c</fields>
        <fields>Id</fields>
        <fields>IsDeleted</fields>
        <fields>Is_CA_Workshop_Attendance__c</fields>
        <fields>Is_Chapter_Representation_Regional_Board__c</fields>
        <fields>Is_Current_Strategic_Plan__c</fields>
        <fields>LastModifiedDate</fields>
        <fields>Member_Participation_in_Forum_Score__c</fields>
        <fields>Name</fields>
        <fields>Number_Forums_Trained_Moderator_Score__c</fields>
        <fields>Number_Primary_Members_Current__c</fields>
        <fields>Number_Trained_Officers__c</fields>
        <fields>Officer_elect_identification_by_1Oct__c</fields>
        <fields>Overall_Health_Score__c</fields>
        <fields>OwnerId</fields>
        <fields>Pct_Chapter_Retention__c</fields>
        <fields>Percentage_Members_Forums__c</fields>
        <fields>RecordTypeId</fields>
        <fields>Record_Type_Name__c</fields>
        <fields>Report_Quarter__c</fields>
        <fields>Report_Year__c</fields>
        <fields>SystemModstamp</fields>
        <fields>Total_Number_Chapter_Events__c</fields>
        <fields>of_Forums_with_trained_Moderators__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>exchangeintegration@ypo.com.prod</integrationUser>
        <name>Chapter Health Upserted</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Chapter Health - Chapter Retention</fullName>
        <actions>
            <name>Update_Chapter_Retention</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Chapter_Retention_grad_class</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Chapter_Health__c.Record_Type_Name__c</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Chapter Health - Overall Health Score</fullName>
        <actions>
            <name>Update_Overall_Health_Score</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Chapter_Health__c.Record_Type_Name__c</field>
            <operation>equals</operation>
            <value>Current</value>
        </criteriaItems>
        <criteriaItems>
            <field>Chapter_Health__c.Record_Type_Name__c</field>
            <operation>equals</operation>
            <value>History</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Chapter Health Upserted</fullName>
        <actions>
            <name>Chapter_Health_Upserted</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <description>Any time Chapter Health created or updated.</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update YPO%2FWPO to WPO based on chapter account</fullName>
        <actions>
            <name>Update_YPO_WPO</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This WR will update &apos;YPO/WPO&apos; field on Chapter Health to &apos;WPO&apos;, if the &apos;YPOI Type&apos; on related chapter account is updated to &apos;WPO&apos;</description>
        <formula>ISPICKVAL(Account__r.YPOI_Type__c ,&apos;WPO&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
