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

  dimension: cs_consol_code {
    label: "Consol Code"
    type: string
    sql: ${TABLE}."CS_CONSOL_CODE" ;;
  }

  dimension: credit_net_amount {
    type: number
    sql: ${TABLE}."CREDIT_NET_AMOUNT" ;;
    value_format_name: gbp
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
    label: "Service Centre"
    type: string
    sql: ${TABLE}."D_DESC" ;;
  }

  dimension: date_and_invoice_ref {
    type: string
    sql: ${TABLE}."DATE_AND_INVOICE_REF" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
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
    label: "Account Manager"
    type: string
    sql: case
    when ${TABLE}."G_DESC" IS NULL then 'NO ACCT MANAGER'
    else ${TABLE}."G_DESC"
    END ;;
  }

  dimension: h_desc {
    label: "Credit Controller"
    type: string
    sql: ${TABLE}."H_DESC" ;;
  }

  dimension: ind_type_2 {
    type: string
    sql: case
         when ${TABLE}."IND_TYPE_2" = '0' or "IND_TYPE_2" = '501' or "IND_TYPE_2" = '3PL' or "IND_TYPE_2" = 'credit card' or "IND_TYPE_2" = 'CreditCard' or "IND_TYPE_2" = 'Tobeupdated'
         or "IND_TYPE_2" = 'Activities of households as employers; undifferentiated goods- and services-prod' or "IND_TYPE_2" = 'DIY GardenCentre' or "IND_TYPE_2" = 'Fitness Wellbeing'
         or "IND_TYPE_2" = 'Activities of extraterritorial organisations and bodies' or "IND_TYPE_2" = 'Consumer PersonalAccount' or "IND_TYPE_2" = 'Mining and Quarrying'
         or "IND_TYPE_2" = 'Water supply, sewerage, waste management and remediation activities' or "IND_TYPE_2" = 'Agriculture, Forestry and Fishing' or "IND_TYPE_2" = 'Environment Waste'  then 'Other'
         when ${TABLE}."IND_TYPE_2" = 'FInancialServices' or "IND_TYPE_2" = 'Financial and insurance activities' or "IND_TYPE_2" = 'FM'  or "IND_TYPE_2" = 'Accountancy' then 'Financial Services'
         when ${TABLE}."IND_TYPE_2" = 'Industrial And BusinessSupplies' or "IND_TYPE_2" = 'Industrial BusinessSupplies' or "IND_TYPE_2" = 'Electricity, gas, steam and air conditioning supply' then 'Industrial Business Supplies'
         when ${TABLE}."IND_TYPE_2" = 'Manufacturing/Industrial' or "IND_TYPE_2" = 'Manufacturing' or "IND_TYPE_2" = 'Consumables' or "IND_TYPE_2" = 'Furnishing' then 'Manufacturing'
         when ${TABLE}."IND_TYPE_2" = 'Wholesale and retail trade; repair of motor vehicles and motorcycles' or "IND_TYPE_2" = 'Retail Wholesale' or "IND_TYPE_2" = 'Fashion'
         or "IND_TYPE_2" = 'Toys Games' then 'Retail'
         when ${TABLE}."IND_TYPE_2" = 'Transportation and storage' or "IND_TYPE_2" = 'Transport Logistics' or "IND_TYPE_2" = 'RailNetwork' then 'Transport'
         when ${TABLE}."IND_TYPE_2" = 'Public administration and defence; compulsory social security' or "IND_TYPE_2" = 'Public Sector' or "IND_TYPE_2" = 'LocalGovernment' then 'Public'
         when ${TABLE}."IND_TYPE_2" = 'Media' or "IND_TYPE_2" = 'Arts, entertainment and recreation' or "IND_TYPE_2" = 'Printing' or "IND_TYPE_2" = 'Musics Media' then 'Arts & Media'
         when ${TABLE}."IND_TYPE_2" = 'Electricals' or "IND_TYPE_2" = 'Utilities Petrochemical' then 'Energy'
         when ${TABLE}."IND_TYPE_2" = 'NHS' or "IND_TYPE_2" = 'Human health and social work activities' then 'Medical & Social Work'
         when ${TABLE}."IND_TYPE_2" = 'Human health and social work activities' or "IND_TYPE_2" = 'BusinessService Consultancy' then 'HR & Consultancy'
         when ${TABLE}."IND_TYPE_2" = 'Information and communication' or "IND_TYPE_2" = 'Technology' or "IND_TYPE_2" = 'Telecommunications' then 'Information & Technology'
         when ${TABLE}."IND_TYPE_2" = 'Administrative and support service activities' then 'Admin & Support Services'
         when ${TABLE}."IND_TYPE_2" = 'Professional, scientific and technical activities' or "IND_TYPE_2" = 'Research Development' or "IND_TYPE_2" = 'Other service activities' then 'Professional Services'
         when ${TABLE}."IND_TYPE_2" = 'Travel Tourism' or "IND_TYPE_2" = 'Baggage' then 'Travel'
         else ${TABLE}."IND_TYPE_2"
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

  dimension: status {
    label: "Case Status"
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: title {
    type: string
    sql: case
          when ${TABLE}."TITLE" = 'Territory Manager' then 'Business Development TM'
          when ${TABLE}."TITLE" = 'Business Development AD' then 'Business Development Account Director'
          else ${TABLE}."TITLE"
          END ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}."TRANSACTION_CODE" ;;
  }

  measure: count {
    label: "Count of Credits"
    type: count_distinct
    sql: ${TABLE}.CNOTE_KEY ;;
    drill_fields: [customer_account_key, customer_name, d_desc, g_desc, h_desc, cnote_key, credit_note_date, credit_net_amount]
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
