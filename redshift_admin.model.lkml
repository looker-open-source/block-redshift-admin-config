# # https://github.com/llooker/blocks_redshift_admin
# #
# # Make sure this is a connection where the database user has sufficient permissions (per above link)
connection: "@{CONNECTION_NAME}"

case_sensitive: no

include: "*.view"
include: "//block-redshift-admin/*.dashboard"
include: "//block-redshift-admin/*.view"
include: "//block-redshift-admin/*.explore.lkml"

datagroup: nightly {
  sql_trigger: SELECT TIMEZONE('US/Pacific',GETDATE())::DATE;;
}

persist_with: nightly

explore: redshift_data_loads {
  extends: [redshift_data_loads_core]
}

explore: redshift_db_space {
  extends: [redshift_db_space_core]
}

explore: redshift_etl_errors {
  extends: [redshift_etl_errors_core]
}

explore: redshift_tables {
  extends: [redshift_tables_core]
}

explore: redshift_plan_steps {
  extends: [redshift_plan_steps_core]
}

explore: redshift_queries {
  extends: [redshift_queries_core]
}

explore: redshift_slices {
  extends: [redshift_slices_core]
}

explore: redshift_query_execution {
  extends: [redshift_query_execution_core]
}
