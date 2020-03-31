view: last_report_date {
  derived_table: {
    sql: SELECT
      country_region,
      province_state,
      admin2 as county_subregion,
      max(date) as last_report_date,

      FROM `bigquery-public-data.covid19_jhu_csse.summary`
      GROUP BY country_region,
      province_state,
      admin2
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  dimension: county_subregion {
    type: string
    sql: ${TABLE}.county_subregion ;;
  }

  dimension: last_report_date {
    type: date
    sql: ${TABLE}.last_report_date ;;
  }

  set: detail {
    fields: [country_region, province_state, county_subregion, last_report_date]
  }
}
