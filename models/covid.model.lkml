connection: "hashpath-bigquery"

# include all the views
include: "/views/**/*.view"
include: "../state_map.dashboard.lookml"

datagroup: covid_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid_default_datagroup

explore: confirmed_cases {}

explore: deaths {}

explore: recovered_cases {}

explore: snapshot {}

explore: most_recent {
  join: state_population {
    type: left_outer
    relationship: one_to_one
    sql_on: ${state_population.state_name}=${most_recent.state} ;;
  }
}

explore: summary {

  join: last_report_date {
    type: left_outer
    relationship: one_to_one
    sql_on:
        ${last_report_date.country_region} = ${summary.country_region}
     -- AND  ${summary.county_subregion} = ${last_report_date.county_subregion}
       AND ${last_report_date.province_state} = ${summary.province_state}
            AND ${last_report_date.last_report_date} = ${summary.date_date};;
  }

}

explore: summary_changes {

  join: last_report_date {
    type: left_outer
    relationship: one_to_one
    sql_on:
    ${summary_changes.country_region} = ${last_report_date.country_region}
    --  AND ${summary_changes.country_or_subregion} = ${last_report_date.county_subregion}
       AND ${summary_changes.province_state} = ${last_report_date.province_state}
            AND ${summary_changes.date_date} = ${last_report_date.last_report_date};;
  }

  }
