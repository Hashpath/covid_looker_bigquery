
  view: state_population {
    derived_table: {
      sql: select
        fips.state_name,
        pop.total_pop
      from `bigquery-public-data.census_bureau_acs.state_2018_1yr` pop
      left join `bigquery-public-data.census_utility.fips_codes_states` fips
      on fips.state_fips_code = pop.geo_id
      ;;
}

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
    map_layer_name: us_states
    primary_key: yes
  }

    dimension: population {
      type: number
      sql: ${TABLE}.total_pop ;;
    }

   measure: total_population {
      type: sum
      sql: ${population} ;;
    }

}
