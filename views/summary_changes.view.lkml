view: summary_changes {
  derived_table: {
    sql: SELECT
      date,
      country_region,
      province_state,
      admin2,
      confirmed as total_confirmed_to_date,
      LAG(confirmed) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as previous_days_cases,
      confirmed - LAG(confirmed) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) new_cases,

      deaths as total_deaths_to_date,
      LAG(deaths) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) as previous_days_deaths,
      deaths - LAG(deaths) OVER(PARTITION BY country_region, province_state, admin2 ORDER BY date ASC) new_deaths,

      FROM `bigquery-public-data.covid19_jhu_csse.summary`
      ORDER BY country_region,
      province_state,
      admin2, date asc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: date
    sql: ${TABLE}.date ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  dimension: country_or_subregion {
    type: string
    sql: ${TABLE}.admin2 ;;
  }

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
    sql: SAFE_DIVIDE(${new_deaths} * 1.0 , ${previous_days_deaths} ) ;;
  }

  measure: new_cases_perc {
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${new_cases} * 1.0 , ${previous_days_cases} ) ;;
  }

  set: detail {
    fields: [
      date,
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
