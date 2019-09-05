view: vw_credits_cases_w_salecodes {
  sql_table_name: CC.VW_CREDITS_CASES_W_SALECODES ;;

  dimension: amt_1 {
    label: "Credit VAT"
    hidden: yes
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: applied_to_pay {
    label: "Applied To Pay"
    type: string
    sql: ${TABLE}."APPLIED_TO_PAY" ;;
  }

  dimension: applied_to_stmt {
    label: "Applied To Statement"
    type: string
    sql: ${TABLE}."APPLIED_TO_STMT" ;;
  }

  dimension: archive {
    label: "Credit Note Archive"
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: case_id {
    type: string
    sql: ${TABLE}."CASE_ID" ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}."CASE_NUMBER" ;;
  }

  dimension: case_owner_full_name {
    type: string
    sql: ${TABLE}."CASE_OWNER_FULL_NAME" ;;
  }

  dimension_group: closed {
    label: "Case Closed Date"
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
    label: "Credit Note Number"
    type: number
    sql: ${TABLE}."CNOTE_KEY" ;;
  }

  dimension: created_by_id {
    label: "Case Created By ID"
    type: string
    sql: ${TABLE}."CreatedById" ;;
  }

  dimension_group: created {
    label: "Case Created"
    hidden: yes
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
    label: "Credit Gross Amount"
    hidden: yes
    type: number
    sql: ${TABLE}."CREDITS" ;;
  }

  dimension: NET_Credit {
    label: "Credit NET Amount"
    type: number
    sql: ${credits} - ${amt_1} ;;
    value_format_name: gbp
  }

  dimension: cs_ccg__c {
    label: "CCG"
    type: string
    sql: ${TABLE}."CS_CCG__c" ;;
  }

  dimension: cs_credit_controller_name__c {
    label: "Credit_Controller_Name"
    type: string
    sql: ${TABLE}."CS_Credit_Controller_Name__c" ;;
  }

  dimension: customer_account_key {
    label: "Customer Account Number"
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

  dimension: description_ {
    label: "Case Details"
    type: string
    sql: ${TABLE}."DESCRIPTION_" ;;
  }

  dimension: e_desc {
    label: "Sales Person Name"
    type: string
    sql: ${TABLE}."E_DESC" ;;
  }

  dimension: f_desc {
    label: "Customer Tier"
    hidden: yes
    type: string
    sql: ${TABLE}."F_DESC" ;;
  }

  dimension: g_desc {
    label: "Account Manager"
    type: string
    sql: case
         when ${TABLE}."G_DESC" IS NULL then 'NO ACCOUNT MANAGER'
         else ${TABLE}."G_DESC"
        END ;;
  }

  dimension: h_desc {
    label: "Credit Controller"
    hidden: yes
    type: string
    sql: ${TABLE}."H_DESC" ;;
  }

  dimension: ind_type {
    label: "Industry Type"
    type: string
    sql: ${TABLE}."IND_TYPE" ;;
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

  dimension: invoice_number {
    type: string
    sql: ${TABLE}."INVOICE_NUMBER" ;;
  }

  dimension: invoice_vat {
    type: number
    sql: ${TABLE}."INVOICE_VAT" ;;
  }

  dimension: is_closed {
    label: "Case Is Closed"
    type: yesno
    sql: ${TABLE}."IsClosed" ;;
  }

  dimension: job_number {
    type: number
    sql: ${TABLE}."JOB_NUMBER" ;;
  }

  dimension: last_modified_by_id {
    label: "Case Last Modified By ID"
    type: string
    sql: ${TABLE}."LastModifiedById" ;;
  }

  dimension_group: last_modified {
    label: "Case Last Modified"
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

  dimension: office_code {
    type: string
    sql: ${TABLE}."OFFICE_CODE" ;;
  }

  dimension: origin {
    label: "Case Origin Type"
    type: string
    sql: ${TABLE}."Origin" ;;
  }

  dimension_group: original_case_createddate {
    hidden: yes
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
    label: "Outstanding Amount"
    type: number
    sql: ${TABLE}."OUTSTANDING_AMT" ;;
  }

  dimension: owner_id {
    label: "Case Owner ID"
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: posted_period {
    label: "Credit Posted Period"
    type: number
    sql: ${TABLE}."POSTED_PERIOD" ;;
  }

  dimension: posted_year {
    label: "Credit Posted Year"
    type: number
    sql: ${TABLE}."POSTED_YEAR" ;;
  }

  dimension: reason {
    label: "Case Reason"
    type: string
    sql: ${TABLE}."Reason" ;;
  }

  dimension: sales_code_e {
    label: "Sales Person Code"
    type: string
    sql: ${TABLE}."SALES_CODE_E" ;;
  }

  dimension: sales_code_f {
    label: "Customer Tier Code"
    type: string
    sql: ${TABLE}."SALES_CODE_F" ;;
  }

  dimension: sales_code_g {
    label: "Account Manager Code"
    type: string
    sql: ${TABLE}."SALES_CODE_G" ;;
  }

  dimension: sales_code_h {
    label: "Credit Controller Code"
    type: string
    sql: ${TABLE}."SALES_CODE_H" ;;
  }

  dimension: sic {
    label: "Sector Code"
    type: string
    sql: ${TABLE}."Sic" ;;
  }

  dimension: sic_desc {
    hidden: yes
    type: string
    sql: ${TABLE}."SicDesc" ;;
  }

  dimension: status {
    label: "Case Status"
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: subject_ {
    label: "Case Subject"
    type: string
    sql: ${TABLE}."SUBJECT_" ;;
  }

  dimension: supplied_name {
    hidden: yes
    type: string
    sql: ${TABLE}."SuppliedName" ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}."TRANSACTION_CODE" ;;
  }

  dimension_group: true_created {
    label: "Case Created Date"
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
    sql: ${TABLE}."TRUE_CREATED_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, supplied_name, case_owner_full_name, cnote_key]
  }

  measure: sum {
    label: "Sum of Credit Note Value (NET)"
    type: sum
    sql: ${TABLE}.{credits} - ${TABLE}.{amt_1} ;;
    value_format_name: gbp
    drill_fields: [customer_name, supplied_name, case_owner_full_name, cnote_key]
  }


}
