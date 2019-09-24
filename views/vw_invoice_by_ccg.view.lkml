view: vw_invoice_by_ccg {
  sql_table_name: CC.VW_INVOICE_BY_CCG ;;

  dimension: ccg_code {
    type: string
    sql: ${TABLE}."CCG_CODE" ;;
  }

  dimension: ccg_tier {
    type: string
    sql: ${TABLE}."CCG_TIER" ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}."CREATION_DATE" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: gross {
    type: number
    sql: ${TABLE}."GROSS" ;;
  }

  dimension: net {
    type: number
    sql: ${TABLE}."NET" ;;
  }

  dimension: vat {
    type: number
    sql: ${TABLE}."VAT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
