include: "*.view"

case_sensitive: no

datagroup: nightly {
  sql_trigger: SELECT TIMEZONE('US/Pacific',GETDATE())::DATE;;
}

persist_with: nightly

explore: redshift_data_loads_config {
  extends: [redshift_data_loads_core]
  extension: required
}

explore: redshift_db_space_config {
  extends: [redshift_db_space_core]
  extension: required
}

explore: redshift_etl_errors_config {
  extends: [redshift_etl_errors_core]
  extension: required
}

explore: redshift_tables_config {
  extends: [redshift_tables_core]
  extension: required
}

explore: redshift_plan_steps_config {
  extends: [redshift_plan_steps_core]
  extension: required
}

explore: redshift_queries_config {
  extends: [redshift_queries_core]
  extension: required
}

explore: redshift_slices_config {
  extends: [redshift_slices_core]
  extension: required
}

explore: redshift_query_execution_config {
  extends: [redshift_query_execution_core]
  extension: required
}
