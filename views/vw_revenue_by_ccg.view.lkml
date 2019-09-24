view: vw_revenue_by_ccg {
  sql_table_name: CC.VW_REVENUE_BY_CCG ;;

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: ccg_code {
    type: string
    sql: ${TABLE}."CCG_CODE" ;;
  }

  dimension: ccg_tier {
    type: string
    sql: ${TABLE}."CCG_TIER" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
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

  dimension: true_revenue {
    type: number
    sql: ${TABLE}."TRUE_REVENUE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_of_revenue {
    label: "Sum of Revenue (NET)"
    type: sum
    sql: ${TABLE}.TRUE_REVENUE ;;
    value_format_name: gbp
  }


}
