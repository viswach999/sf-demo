<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Bank_Account_Name_Text</fullName>
        <field>Bank_Account_Name_Text__c</field>
        <formula>CASE ( Bank_Account_GL__c, 
&quot;10 - Wells Fargo Credit Card USD&quot;, &quot;USD CC WF Controlled Disbursement&quot;, 
&quot;10 - Wells Fargo MCA GBP&quot;, &quot;WF MCA British Pound (GBP)&quot;, 
&quot;10 - Wells Fargo London EUR&quot;, &quot;WF London Euro (EUR)&quot;, 
&quot;10 - Wells Fargo MCA AUD&quot;, &quot;WF MCA Australian (AUD)&quot;, 
&quot;10 - Wells Fargo MCA CAD&quot;, &quot;WF MCA Canadian (CAD)&quot;, 
&quot;10 - Wells Fargo Operating USD&quot;, &quot;Master Account (Op) Wells Fargo&quot;, 
&quot;10 - Wells Fargo Dues Wire USD&quot;, &quot;Cash - Wells Fargo Dues Wire&quot;, 
&quot;Payment Credits&quot;, &quot;Payment Credits&quot;, &quot;Other&quot; )</formula>
        <name>Bank Account Name Text</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Bank_Account_Name_Text_Workflow</fullName>
        <field>Bank_Account_Name_Text__c</field>
        <formula>CASE ( Bank_Account_GL__c, 
&quot;10 - Wells Fargo Credit Card USD&quot;, &quot;Wells Fargo Credit Card USD&quot;, 
&quot;10 - Wells Fargo MCA GBP&quot;, &quot;Wells Fargo MCA GBP&quot;, 
&quot;10 - Wells Fargo London EUR&quot;, &quot;Wells Fargo London EUR&quot;, 
&quot;10 - Wells Fargo MCA AUD&quot;, &quot;Wells Fargo MCA AUD&quot;, 
&quot;10 - Wells Fargo MCA CAD&quot;, &quot;Wells Fargo MCA CAD&quot;, 
&quot;10 - Wells Fargo Operating USD&quot;, &quot;Wells Fargo Operating Account USD&quot;, 
&quot;10 - Wells Fargo Dues Wire USD&quot;, &quot;Wells Fargo Dues Wire USD&quot;, 
&quot;Payment Credits&quot;, &quot;Payment Credits&quot;, &quot;Other&quot; )</formula>
        <name>Bank Account Name Text Workflow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Payment_Type_2</fullName>
        <field>Payment_Type_2__c</field>
        <formula>CASE ( Payment_Type__c, 
&quot;Visa&quot;, &quot;Credit Card&quot;, 
&quot;Mastercard&quot;, &quot;Credit Card&quot;, 
&quot;American Express&quot;, &quot;Credit Card&quot;, 
&quot;Discover&quot;, &quot;Credit Card&quot;, 
&quot;Cash&quot;, &quot;CashCheck&quot;, 
&quot;Check&quot;, &quot;CashCheck&quot;, 
&quot;Bank Transfer&quot;, &quot;Bank Transfer&quot;, 
&quot;Payment Credits&quot;, &quot;Payment Credits&quot;, &quot;Other&quot; )</formula>
        <name>Payment Type 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>FFA%3A Bank Account Name Text Cvent Transaction</fullName>
        <actions>
            <name>Bank_Account_Name_Text</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Cvent_Transaction__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>FFA%3A Bank Account Name Text Cvent Transaction Workflow</fullName>
        <actions>
            <name>Bank_Account_Name_Text_Workflow</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Cvent_Transaction__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>FFA%3A Payment Type Workflow Cvent Transaction</fullName>
        <actions>
            <name>Payment_Type_2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Cvent_Transaction__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
