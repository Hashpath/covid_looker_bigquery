view: recovered_cases {
  sql_table_name: `bigquery-public-data.covid19_jhu_csse.recovered_cases`
    ;;

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_geom {
    type: string
    sql: ${TABLE}.location_geom ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
