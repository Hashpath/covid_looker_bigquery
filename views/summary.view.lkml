view: summary {
  sql_table_name: `bigquery-public-data.covid19_jhu_csse.summary`
    ;;

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: county_subregion {
    type: string
    sql: ${TABLE}.admin2 ;;
  }

  dimension: combined_key {
    hidden: yes
    type: string
    sql: ${TABLE}.combined_key ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.confirmed ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension_group: date {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  dimension: fips {
    hidden: yes
    type: number
    sql: ${TABLE}.fips ;;
  }

  dimension: latitude {
    type: number
    #hidden: yes
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_geom {
    label: "Location"
    type: location
    sql_latitude:${TABLE}.latitude ;;
    sql_longitude:${TABLE}.longitude ;;

  }

  dimension: longitude {
   # hidden: yes
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: province_state {
    map_layer_name: us_states
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

  dimension: recovered {
    type: number
    sql: ${TABLE}.recovered ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_confirmed {
    type: sum
    sql: ${TABLE}.confirmed ;;
  }

  measure: sum_recovered {
    type: sum
    sql: ${TABLE}.recovered ;;
  }

  measure: sum_deaths {
    type: sum
    sql: ${TABLE}.deaths ;;
  }

  measure: death_rate {
    type: number
    value_format: "0.00%"
    sql: SAFE_DIVIDE(${sum_deaths} , ${sum_confirmed}) ;;
  }

}
