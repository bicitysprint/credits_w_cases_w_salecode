view: vw_revenue_by_ccg {
  sql_table_name: CC.VW_REVENUE_BY_CCG ;;

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

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
  }

  dimension: system_ccg {
    type: string
    sql: ${TABLE}."system ccg" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_of_revenue {
     type: sum
      sql: ${TABLE}.REVENUE  ;;
  }


}
