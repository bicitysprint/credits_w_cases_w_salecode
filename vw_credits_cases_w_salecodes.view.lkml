view: vw_credits_cases_w_salecodes {
  sql_table_name: CC.VW_CREDITS_CASES_W_SALECODES ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

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

  dimension_group: closed {
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
    sql: ${TABLE}."ClosedDate" ;;
  }

  dimension: cnote_key {
    type: number
    sql: ${TABLE}."CNOTE_KEY" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CreatedById" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CreatedDate" ;;
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

  dimension: cs_account_number__c {
    type: string
    sql: ${TABLE}."CS_Account_Number__c" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: d_desc {
    type: string
    sql: ${TABLE}."D_DESC" ;;
  }

  dimension: date_and_invoice_ref {
    type: string
    sql: ${TABLE}."DATE_AND_INVOICE_REF" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description" ;;
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

  dimension: invoice_number {
    type: string
    sql: ${TABLE}."INVOICE_NUMBER" ;;
  }

  dimension: invoice_vat {
    type: number
    sql: ${TABLE}."INVOICE_VAT" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IsClosed" ;;
  }

  dimension: job_number {
    type: number
    sql: ${TABLE}."JOB_NUMBER" ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LastModifiedById" ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}."LastModifiedDate" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: office_code {
    type: string
    sql: ${TABLE}."OFFICE_CODE" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."Origin" ;;
  }

  dimension_group: original_case_createddate {
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
    sql: ${TABLE}."ORIGINAL_CASE_CREATEDDATE" ;;
  }

  dimension: original_case_number {
    type: string
    sql: ${TABLE}."ORIGINAL_CASE_NUMBER" ;;
  }

  dimension: outstanding_amt {
    type: number
    sql: ${TABLE}."OUTSTANDING_AMT" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: posted_period {
    type: number
    sql: ${TABLE}."POSTED_PERIOD" ;;
  }

  dimension: posted_year {
    type: number
    sql: ${TABLE}."POSTED_YEAR" ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}."Reason" ;;
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
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."Subject" ;;
  }

  dimension: supplied_name {
    type: string
    sql: ${TABLE}."SuppliedName" ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}."TRANSACTION_CODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, supplied_name]
  }
}
