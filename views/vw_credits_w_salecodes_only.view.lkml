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
    type: number
    sql: ${TABLE}."CNOTE_KEY" ;;
  }

  dimension: credit_net_amount {
    type: number
    sql: ${TABLE}."CREDIT_NET_AMOUNT" ;;
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
    sql: ${TABLE}."CS_Credit_Controller_Name__c" ;;
  }

  dimension: customer_account_key {
    type: string
    sql: ${TABLE}."CUSTOMER_ACCOUNT_KEY" ;;
  }

  dimension: customer_key {
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
    sql: ${TABLE}."F_DESC" ;;
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
    sql: ${TABLE}."IND_TYPE" ;;
  }

  dimension: industry {
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
    type: count
    drill_fields: [customer_name, case_owner_full_name]
  }
}
