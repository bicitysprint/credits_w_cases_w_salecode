connection: "db"

# include all the views
include: "*.view"

datagroup: credits_w_cases_w_salecodes_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hours"
}

persist_with: credits_w_cases_w_salecodes_default_datagroup

explore: vw_credits_cases_w_salecodes {
  persist_with: credits_w_cases_w_salecodes_default_datagroup
  label: "Credits Cases And Salecodes"
  }
