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

  dimension_group: clean_crednote_inv_date {
    label: "Credit Note Related Invoice or Job Date"
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
    sql: ${TABLE}."CLEAN_CREDNOTE_INV_DATE" ;;
  }

  dimension: clean_crednote_inv_number {
    label: "Credit Note Related Invoice or Job Number"
    type: string
    sql: ${TABLE}."CLEAN_CREDNOTE_INV_NUMBER" ;;
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
    type: string
    sql: ${TABLE}."CNOTE_KEY" ;;

##    drill_fields: [customer_name, d_desc, g_desc, cs_credit_controller_name__c, reason, cnote_key, credit_note_date_date]
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


    drill_fields: [created_month,  case_number, cs_credit_controller_name__c, reason]
  }

  dimension_group: credit_note_date {
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
  drill_fields: [credit_note_date_month, credit_net_amount, cnote_key, customer_name, cs_credit_controller_name__c]
  }

  dimension: credits {
    label: "Credit Gross Amount"
    hidden: yes
    type: number
    sql: ${TABLE}."CREDITS" ;;
  }

  dimension: credit_net_amount {
    label: "Credit NET Amount"
    type: number
    sql: ${TABLE}."CREDIT_NET_AMOUNT"  ;;
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
    sql: case
         when ${TABLE}."CS_Credit_Controller_Name__c" IS NULL then 'CS Account'
         else ${TABLE}."CS_Credit_Controller_Name__c"
         END ;;
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

##
##  dimension_group: days_since_invoice_issued{
##    type: duration
##    intervals: [day]
##    sql_start: ${TABLE}.invoice ;;
##    sql_end: ${TABLE}.date_and_invoice_ref ;;
##      }

  dimension: date_diff {
    label: "Days Until Query Raised"
    type: number
    sql: DATEDIFF(day, ${clean_crednote_inv_date_date}, ${true_created_date}) ;;
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
    sql: case
         when ${TABLE}."IND_TYPE" = '0' or '501' then 'Other'
         else ${TABLE}."IND_TYPE"
         END ;;
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

  measure: count_of_credits {
    label: "Count of Credits"
    type: count_distinct
    sql: ${TABLE}.cnote_key ;;
    drill_fields: [customer_name, d_desc, g_desc, cs_credit_controller_name__c, reason, credit_note_date_date, cnote_key, credit_net_amount]
  }

  measure: count_of_cases {
    label: "Count of Cases"
    sql: ${TABLE}.CASE_ID ;;
    type: count_distinct
    drill_fields: [customer_name, case_owner_full_name, case_number, true_created_date, case_id]
  }

  measure: sum {
    label: "Sum of Credit Note Value (NET)"
    type: sum
    sql: ${TABLE}.CREDIT_NET_AMOUNT ;;
    value_format_name: gbp
    drill_fields: [customer_name, case_owner_full_name, cnote_key, credit_note_date_date, credit_net_amount]
  }

##  measure: sum_of_date_diff {
##    label: "Sum of Date Differences"
##    type: number
##    sql: sum(${date_diff};;
##   }

    measure: avg_of_date_diff {
      label: "Avg Number of Days To Query"
      type: average
      filters: {
        field: date_diff
        value: ">=0"
        }
      value_format_name: decimal_2
      sql: ${date_diff} ;;
    }

}
