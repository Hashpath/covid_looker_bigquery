connection: "hashpath-bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: covid_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid_default_datagroup

explore: confirmed_cases {}

explore: deaths {}

explore: recovered_cases {}

explore: summary {

  join: last_report_date {
    type: left_outer
    relationship: one_to_one
    sql_on: ${summary.county_subregion} = ${last_report_date.county_subregion}
      AND ${last_report_date.country_region} = ${summary.country_region}
      AND ${last_report_date.province_state} = ${summary.province_state}
            AND ${last_report_date.last_report_date} = ${summary.date_date};;
  }

}

explore: summary_changes {}
