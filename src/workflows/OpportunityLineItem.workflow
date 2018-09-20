<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Copy_Name_to_KG_Name</fullName>
        <field>KGRenewal__Name__c</field>
        <formula>Product_Name__c</formula>
        <name>Copy Name to KG Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_Oli_Description</fullName>
        <description>Sets Oli description to &quot;Contact__c.FristName Contact__c.FristName&quot; for use on Invoice PDF</description>
        <field>Description</field>
        <formula>Contact__r.FirstName + &apos; &apos; + Contact__r.LastName</formula>
        <name>KG Oli Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_Oli_Id_toDescription</fullName>
        <description>Sets Oli description to the Id of the Oli</description>
        <field>Description</field>
        <formula>Id</formula>
        <name>KG Oli Id to Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_Set_Worldaware_YPO_Gold_TRUE</fullName>
        <description>Set OLI&apos;s Worldaware YPO Gold checkbox = TRUE</description>
        <field>Worldaware_YPO_Gold__c</field>
        <literalValue>1</literalValue>
        <name>KG Set Worldaware YPO Gold = TRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_Set_YNG_Plus_TRUE</fullName>
        <description>Set OLI&apos;s YNG Plus checkbox = TRUE</description>
        <field>YNG_Plus__c</field>
        <literalValue>1</literalValue>
        <name>KG Set YNG Plus = TRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_Suppress_OLI_renewal</fullName>
        <field>KGRenewal__SuppressRenewal__c</field>
        <literalValue>1</literalValue>
        <name>KG Suppress OLI renewal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_apply_100_discount</fullName>
        <description>Apply a 100% discount to OLI (for Lifetime Dues product)</description>
        <field>Discount</field>
        <formula>1.00</formula>
        <name>KG apply 100% discount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_initialize_Opp_remaining_installments</fullName>
        <description>Initialize Opp&apos;s Remaining Installment field to the Product&apos;s Price Term / 12 (for Lifetime Dues products)</description>
        <field>Remaining_Installments__c</field>
        <formula>BLANKVALUE(Product2.KGRenewal__PriceTerm__c, 12) / 12</formula>
        <name>KG initialize Opp remaining installments</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>OpportunityId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_lock_OLI_in_cart</fullName>
        <description>Item can not be removed from Opportunity (cart) via Venue shopping cart componenet</description>
        <field>KGRenewal__IsLockedInCart__c</field>
        <literalValue>1</literalValue>
        <name>KG lock OLI in cart</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>KG_set_OLI_effective_date_to_1st_of_mont</fullName>
        <description>Set Contract Effective Date to 1st day of month (Prorate product)</description>
        <field>KGRenewal__ContractEffectiveDate__c</field>
        <formula>DATE(YEAR(TODAY()),MONTH(TODAY()),1)</formula>
        <name>KG set OLI effective date to 1st of mont</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Contract_Effective_Date</fullName>
        <field>KGRenewal__ContractEffectiveDate__c</field>
        <formula>IF( Product2.Fiscal_Date_Start__c &gt; Opportunity.Fiscal_Date_Start__c ,  Product2.Fiscal_Date_Start__c , DATE(YEAR(TODAY()),MONTH(TODAY()),1))</formula>
        <name>Set Contract Effective Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Contract_End_Date</fullName>
        <field>KGRenewal__ContractEndDate__c</field>
        <formula>IF( Product2.KGRenewal__Subscription__c = TRUE,
DATE(YEAR(Product2.Fiscal_Date_Start__c)+1,06,30), NULL)</formula>
        <name>Set Contract End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contract_Effective_Date2</fullName>
        <field>KGRenewal__ContractEffectiveDate__c</field>
        <formula>IF( Opportunity.Fiscal_Date_Start__c &lt; TODAY(),  DATE(YEAR(TODAY()),MONTH(TODAY()),1), Opportunity.Fiscal_Date_Start__c)</formula>
        <name>Update Contract Effective Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Contract_End_Date</fullName>
        <field>KGRenewal__ContractEndDate__c</field>
        <formula>IF( Product2.KGRenewal__Subscription__c = TRUE, 
DATE(YEAR(Product2.Fiscal_Date_Start__c)+1,06,30), NULL)</formula>
        <name>Update Contract End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>KG 0 remaining installments</fullName>
        <actions>
            <name>KG_apply_100_discount</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Remaining_Installments__c</field>
            <operation>equals</operation>
            <value>0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Product2.Family</field>
            <operation>equals</operation>
            <value>Lifetime Dues</value>
        </criteriaItems>
        <description>No remaining installments (for Lifetime Dues product)</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KG Initial Annual Dues OLI</fullName>
        <actions>
            <name>KG_lock_OLI_in_cart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Initial Annual Dues (not a renewal OLI)</description>
        <formula>NOT(KGRenewal__IsRenewal__c) &amp;&amp; (ISPICKVAL(PricebookEntry.Product2.Family, &apos;Annual Dues&apos;) || ISPICKVAL(PricebookEntry.Product2.Family, &apos;Chapter Dues&apos;))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KG Initial Member Benefit OLI</fullName>
        <actions>
            <name>KG_Suppress_OLI_renewal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Initial Member Benefit (not a renewal OLI)</description>
        <formula>NOT(KGRenewal__IsRenewal__c) &amp;&amp; ISPICKVAL(PricebookEntry.Product2.Family, &apos;Member Benefit&apos;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KG Initial Prorate OLI</fullName>
        <actions>
            <name>KG_set_OLI_effective_date_to_1st_of_mont</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Initial (not on a renewal Opp) Prorate-able product</description>
        <formula>ISBLANK(Opportunity.KGRenewal__PreviousSale__c) &amp;&amp; PricebookEntry.Product2.isProrate__c</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KG Initial Renewal Dues OLI</fullName>
        <actions>
            <name>KG_lock_OLI_in_cart</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Initial Annual Dues (a renewal OLI)</description>
        <formula>(((ISPICKVAL(PricebookEntry.Product2.Family, &apos;Annual Dues&apos;) || ISPICKVAL(PricebookEntry.Product2.Family, &apos;Chapter Dues&apos;) || ISPICKVAL(PricebookEntry.Product2.Family, &apos;Lifetime Dues&apos;)) || PricebookEntry.Product2.Worldaware_benefit__c = True ))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KG OLI Name is blank</fullName>
        <actions>
            <name>Copy_Name_to_KG_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Used to Copy Product2 Name to OLI Name</description>
        <formula>ISBLANK(KGRenewal__Name__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>KG Set Opportunity Product Description</fullName>
        <actions>
            <name>KG_Oli_Description</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Sets the OpportunityLineItem&apos;s description</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>KG Worldaware YPO Gold OLI</fullName>
        <actions>
            <name>KG_Set_Worldaware_YPO_Gold_TRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Product2.Complimentary_WPO_Product__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Product2.Worldaware_benefit__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>OLI is complementary Worldaware YPO Gold member benefit</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>KG YNG PLus OLI</fullName>
        <actions>
            <name>KG_Set_YNG_Plus_TRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Product2.Family</field>
            <operation>equals</operation>
            <value>Member Benefit</value>
        </criteriaItems>
        <criteriaItems>
            <field>Product2.Exclusive__c</field>
            <operation>equals</operation>
            <value>YNG</value>
        </criteriaItems>
        <description>OLI is YNG+ member benefit</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>KG initial Lifetime Dues product</fullName>
        <actions>
            <name>KG_initialize_Opp_remaining_installments</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Used to initialize Opportunity.Remaining_Installments__c (for Lifetime Dues product)</description>
        <formula>AND(ISPICKVAL(Product2.Family, &apos;Lifetime Dues&apos;), ISBLANK(Opportunity.Remaining_Installments__c))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Non-Q4 KG Initial Prorate OLI</fullName>
        <actions>
            <name>Update_Contract_Effective_Date2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Contract_End_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Initial (not on a renewal Opp) Q4 Prorate-able product</description>
        <formula>NOT(Opportunity.Created_in_Fiscal_Q4__c) &amp;&amp; Product2.isProrate__c &amp;&amp; ISBLANK(Opportunity.KGRenewal__PreviousSale__c)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Q4 KG Initial Prorate OLI</fullName>
        <actions>
            <name>Set_Contract_Effective_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Contract_End_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Initial (not on a renewal Opp) Q4 Prorate-able product</description>
        <formula>Opportunity.Created_in_Fiscal_Q4__c &amp;&amp; ISBLANK(Opportunity.KGRenewal__PreviousSale__c) &amp;&amp; Product2.isProrate__c</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
