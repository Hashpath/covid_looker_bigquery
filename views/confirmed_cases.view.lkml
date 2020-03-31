view: confirmed_cases {
  sql_table_name: `bigquery-public-data.covid19_jhu_csse.confirmed_cases`
    ;;
##new column added every day for confirmed cases from that day
  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: latlong {
    type: location
    sql_longitude: ${TABLE}.longitude;;
    sql_latitude: ${TABLE}.latitude ;;

  }
  dimension: latitude {
    type: number
    hidden: yes
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_geom {
    type: string
    sql: ${TABLE}.location_geom ;;
    hidden: yes
  }

  dimension: longitude {
    type: number
    hidden: yes
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
