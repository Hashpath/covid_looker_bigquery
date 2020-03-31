view: summary_changes {
  derived_table: {
    sql: SELECT
      date,
      country_region,
      province_state,
      admin2,
      confirmed as total_confirmed_to_date,
      LAG(confirmed) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as previous_days_cases,
      confirmed - LAG(confirmed) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as new_cases,

      deaths as total_deaths_to_date,
      LAG(deaths) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as previous_days_deaths,
      deaths - LAG(deaths) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as new_deaths,

      recovered as total_recoveries_to_date,
      LAG(recovered) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as previous_days_recoveries,
      recovered - LAG(recovered) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as new_recoveries

      FROM `bigquery-public-data.covid19_jhu_csse.summary`
      ORDER BY
      country_region,
      province_state,
      admin2,
      date asc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: date { #going back further than 3-11-20 causes province_state to include cities
    type: time
    timeframes: [date,month,year,week]
    datatype: date
    sql: ${TABLE}.date ;;
  }

  ######## Regions ######

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  dimension: cleaned_state {
    description: "Only New England for now"
    type: string
    sql: case when ${province_state} like '%, MA' or ${province_state} = 'Massachusetts' then 'Massachusetts'
    when ${province_state} like '%, CT' or ${province_state} = 'Connecticut' then 'Connecticut'
    when ${province_state} like '%, VT' or ${province_state} = 'Vermont' then 'Vermont'
    when ${province_state} like '%, ME' or ${province_state} = 'Maine' then 'Maine'
    when ${province_state} like '%, RI' or ${province_state} = 'Rhode Island' then 'Rhode Island'
    when ${province_state} like '%, NH' or ${province_state} = 'New Hampshire' then 'New Hampshire'
    else 'everywhere else in the world' end ;;
  }

  dimension: country_or_subregion {
    label: "county_subregion"
    type: string
    sql: ${TABLE}.admin2 ;;
  }

  #### Confirmed ###

  measure: total_confirmed_to_date {
    type: sum
    sql: ${TABLE}.total_confirmed_to_date ;;
  }

  measure: previous_days_cases {
    type: sum
    sql: ${TABLE}.previous_days_cases ;;
  }

  measure: new_cases {
    type: sum
    sql: ${TABLE}.new_cases ;;
  }

  measure: new_cases_perc {
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${new_cases} * 1.0 , ${previous_days_cases} ) ;;
  }

  ### Recoveries ####
  measure: total_recoveries_to_date {
    type: sum
    sql: ${TABLE}.total_recoveries_to_date ;;
  }

  measure: previous_days_recoveries {
    type: sum
    sql: ${TABLE}.previous_days_recoveries ;;
  }

  measure: new_recoveries {
    type: sum
    sql: ${TABLE}.new_recoveries ;;
  }

  #### Deaths #####

  measure: total_deaths_to_date {
    type: sum
    sql: ${TABLE}.total_deaths_to_date ;;
  }

  measure: previous_days_deaths {
    type: sum
    sql: ${TABLE}.previous_days_deaths ;;
  }

  measure: new_deaths {
    type: sum
    sql: ${TABLE}.new_deaths ;;
  }

  measure: new_deaths_perc {
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${new_deaths} * 1.0 , ${previous_days_deaths} ) ;;
  }

  measure: death_rate {
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${total_deaths_to_date} , ${total_confirmed_to_date}) ;;
  }

  ### Filtered to MA ###

  measure: total_cases_to_date_ma {
    group_label: "MA Measures"
    type: sum
    filters: [cleaned_state: "Massachusetts"]
    sql: ${TABLE}.total_confirmed_to_date ;;
  }

  measure: total_deaths_to_date_ma {
    group_label: "MA Measures"
    type: sum
    filters: [cleaned_state: "Massachusetts"]
    sql: ${TABLE}.total_deaths_to_date ;;
  }

  measure: percent_cases_ma {
    group_label: "MA Measures"
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${total_cases_to_date_ma} * 1.0 , ${total_confirmed_to_date}) ;;
  }

  measure: death_rate_ma {
    group_label: "MA Measures"
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${total_deaths_to_date_ma} , ${total_cases_to_date_ma}) ;;
  }




  set: detail {
    fields: [
      date_date,
      country_region,
      province_state,
      country_or_subregion,
      total_confirmed_to_date,
      previous_days_cases,
      new_cases,
      total_deaths_to_date,
      previous_days_deaths,
      new_deaths
    ]
  }
}
