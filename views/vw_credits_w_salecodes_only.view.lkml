view: vw_credits_w_salecodes_only {
    sql_table_name: CC.VW_CREDITS_W_SALECODES_ONLY ;;

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: applied_to_pay {
    type: string
    sql: ${TABLE}."APPLIED_TO_PAY" ;;
  }

  dimension: applied_to_stmt {
    type: string
    sql: ${TABLE}."APPLIED_TO_STMT" ;;
  }

  dimension: archive {
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}."CASE_NUMBER" ;;
  }

  dimension: case_owner_full_name {
    type: string
    sql: ${TABLE}."CASE_OWNER_FULL_NAME" ;;
  }

  dimension: clean_crednote_inv_date {
    type: string
    sql: ${TABLE}."CLEAN_CREDNOTE_INV_DATE" ;;
  }

  dimension: clean_crednote_inv_number {
    type: string
    sql: ${TABLE}."CLEAN_CREDNOTE_INV_NUMBER" ;;
  }

  dimension: clean_description_number {
    type: string
    sql: ${TABLE}."CLEAN_DESCRIPTION_NUMBER" ;;
  }

  dimension: cnote_key {
    primary_key: yes
    type: string
    sql: ${TABLE}."CNOTE_KEY" ;;
  }

  dimension: credit_net_amount {
    type: number
    sql: ${TABLE}."CREDIT_NET_AMOUNT" ;;
    drill_fields: [customer_account_key, customer_name, cnote_key, credit_net_amount]
  }

  dimension_group: credit_note {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREDIT_NOTE_DATE" ;;
  }

  dimension: credits {
    type: number
    sql: ${TABLE}."CREDITS" ;;
  }

  dimension: cs_ccg__c {
    type: string
    sql: ${TABLE}."CS_CCG__c" ;;
  }

  dimension: cs_credit_controller_name__c {
    type: string
    sql: case
    when ${TABLE}."CS_Credit_Controller_Name__c" IS NULL then 'CS Account'
    else ${TABLE}."CS_Credit_Controller_Name__c"
    END ;;
  }

  dimension: customer_account_key {
    type: string
    sql: ${TABLE}."CUSTOMER_ACCOUNT_KEY" ;;
  }

  dimension: customer_key {
    hidden: yes
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: d_desc {
    type: string
    sql: ${TABLE}."D_DESC" ;;
  }

  dimension: date_and_invoice_ref {
    type: string
    sql: ${TABLE}."DATE_AND_INVOICE_REF" ;;
  }

  dimension: e_desc {
    type: string
    sql: ${TABLE}."E_DESC" ;;
  }

  dimension: f_desc {
    type: string
    sql: case
    when ${TABLE}."F_DESC" = 'PLAT+' then 'Platinum Plus'
    when ${TABLE}."F_DESC" = 'PEARL' then 'Pearl'
    when ${TABLE}."F_DESC" = 'PLATINUM' then 'Platinum'
    when ${TABLE}."F_DESC" = 'GOLD' then 'Gold'
    when ${TABLE}."F_DESC" = 'GOLD+' then 'Gold Plus'
    when ${TABLE}."F_DESC" = 'PLATINUM MINUS' then 'Platinum Minus'
    else ${TABLE}."F_DESC"
    END ;;
  }

  dimension: g_desc {
    type: string
    sql: ${TABLE}."G_DESC" ;;
  }

  dimension: h_desc {
    type: string
    sql: ${TABLE}."H_DESC" ;;
  }

  dimension: ind_type {
    type: string
    sql: case
         when ${TABLE}."IND_TYPE" = '0' or "IND_TYPE" = '501' or "IND_TYPE" = '3PL' or "IND_TYPE" = 'credit card' or "IND_TYPE" = 'CreditCard' or "IND_TYPE" = 'Tobeupdated'
         or "IND_TYPE" = 'Activities of households as employers; undifferentiated goods- and services-prod' or "IND_TYPE" = 'DIY GardenCentre' or "IND_TYPE" = 'Fitness Wellbeing'
         or "IND_TYPE" = 'Activities of extraterritorial organisations and bodies' or "IND_TYPE" = 'Consumer PersonalAccount' or "IND_TYPE" = 'Mining and Quarrying'
         or "IND_TYPE" = 'Water supply, sewerage, waste management and remediation activities' or "IND_TYPE" = 'Agriculture, Forestry and Fishing' or "IND_TYPE" = 'Environment Waste'  then 'Other'
         when ${TABLE}."IND_TYPE" = 'FInancialServices' or "IND_TYPE" = 'Financial and insurance activities' or "IND_TYPE" = 'FM'  or "IND_TYPE" = 'Accountancy' then 'Financial Services'
         when ${TABLE}."IND_TYPE" = 'Industrial And BusinessSupplies' or "IND_TYPE" = 'Industrial BusinessSupplies' or "IND_TYPE" = 'Electricity, gas, steam and air conditioning supply' then 'Industrial Business Supplies'
         when ${TABLE}."IND_TYPE" = 'Manufacturing/Industrial' or "IND_TYPE" = 'Manufacturing' or "IND_TYPE" = 'Consumables' or "IND_TYPE" = 'Furnishing' then 'Manufacturing'
         when ${TABLE}."IND_TYPE" = 'Wholesale and retail trade; repair of motor vehicles and motorcycles' or "IND_TYPE" = 'Retail Wholesale' or "IND_TYPE" = 'Fashion'
         or "IND_TYPE" = 'Toys Games' then 'Retail'
         when ${TABLE}."IND_TYPE" = 'Transportation and storage' or "IND_TYPE" = 'Transport Logistics' or "IND_TYPE" = 'RailNetwork' then 'Transport'
         when ${TABLE}."IND_TYPE" = 'Public administration and defence; compulsory social security' or "IND_TYPE" = 'Public Sector' or "IND_TYPE" = 'LocalGovernment' then 'Public'
         when ${TABLE}."IND_TYPE" = 'Media' or "IND_TYPE" = 'Arts, entertainment and recreation' or "IND_TYPE" = 'Printing' or "IND_TYPE" = 'Musics Media' then 'Arts & Media'
         when ${TABLE}."IND_TYPE" = 'Electricals' or "IND_TYPE" = 'Utilities Petrochemical' then 'Energy'
         when ${TABLE}."IND_TYPE" = 'NHS' or "IND_TYPE" = 'Human health and social work activities' then 'Medical & Social Work'
         when ${TABLE}."IND_TYPE" = 'Human health and social work activities' or "IND_TYPE" = 'BusinessService Consultancy' then 'HR & Consultancy'
         when ${TABLE}."IND_TYPE" = 'Information and communication' or "IND_TYPE" = 'Technology' or "IND_TYPE" = 'Telecommunications' then 'Information & Technology'
         when ${TABLE}."IND_TYPE" = 'Administrative and support service activities' then 'Admin & Support Services'
         when ${TABLE}."IND_TYPE" = 'Professional, scientific and technical activities' or "IND_TYPE" = 'Research Development' or "IND_TYPE" = 'Other service activities' then 'Professional Services'
         when ${TABLE}."IND_TYPE" = 'Travel Tourism' or "IND_TYPE" = 'Baggage' then 'Travel'
         else ${TABLE}."IND_TYPE"
         END  ;;
  }

  dimension: industry {
    hidden: yes
    type: string
    sql: ${TABLE}."Industry" ;;
  }

  dimension: internal_ref {
    type: string
    sql: ${TABLE}."INTERNAL_REF" ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."INVOICE_DATE" ;;
  }

  dimension: invoice_gross {
    type: number
    sql: ${TABLE}."INVOICE_GROSS" ;;
  }

  dimension: invoice_net {
    type: number
    sql: ${TABLE}."INVOICE_NET" ;;
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}."INVOICE_NO" ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}."INVOICE_NUMBER" ;;
  }

  dimension: invoice_or_job_number_ref {
    type: string
    sql: ${TABLE}."INVOICE_OR_JOB_NUMBER_REF" ;;
  }

  dimension: invoice_vat {
    type: number
    sql: ${TABLE}."INVOICE_VAT" ;;
  }

  dimension: job_number {
    type: number
    sql: ${TABLE}."JOB_NUMBER" ;;
  }

  dimension: office_code {
    type: string
    sql: ${TABLE}."OFFICE_CODE" ;;
  }

  dimension: outstanding_amt {
    type: number
    sql: ${TABLE}."OUTSTANDING_AMT" ;;
  }

  dimension: posted_period {
    type: number
    sql: ${TABLE}."POSTED_PERIOD" ;;
  }

  dimension: posted_year {
    type: number
    sql: ${TABLE}."POSTED_YEAR" ;;
  }

  dimension: sales_code_e {
    type: string
    sql: ${TABLE}."SALES_CODE_E" ;;
  }

  dimension: sales_code_f {
    type: string
    sql: ${TABLE}."SALES_CODE_F" ;;
  }

  dimension: sales_code_g {
    type: string
    sql: ${TABLE}."SALES_CODE_G" ;;
  }

  dimension: sales_code_h {
    type: string
    sql: ${TABLE}."SALES_CODE_H" ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}."Sic" ;;
  }

  dimension: sic_desc {
    type: string
    sql: ${TABLE}."SicDesc" ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}."TRANSACTION_CODE" ;;
  }

  measure: count {
    label: "Count of Credits"
    type: count_distinct
    sql: ${TABLE}.CNOTE_KEY ;;
    drill_fields: [customer_account_key, customer_name, cnote_key, credit_note_date, credit_net_amount]
  }

  measure: sum {
    label: "Sum of Credit Value"
    type: sum
    sql: ${credit_net_amount} ;;
    value_format_name: gbp
    drill_fields: [customer_account_key, customer_name, cnote_key, credit_note_date, credit_net_amount]
  }

##  measure: sum_of_credits  {
##    type: sum
##    sql: ${credits} ;;
##    value_format_name: gbp
##  }


}
