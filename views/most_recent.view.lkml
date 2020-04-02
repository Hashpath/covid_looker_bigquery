view: most_recent {
  derived_table: {
    sql: SELECT
      case when province_state like '%, AL'or province_state = 'Alabama' THEN 'Alabama'
when province_state like '%, AK'or province_state = 'Alaska' THEN 'Alaska'
when province_state like '%, AZ'or province_state = 'Arizona' THEN 'Arizona'
when province_state like '%, AR'or province_state = 'Arkansas' THEN 'Arkansas'
when province_state like '%, CA'or province_state = 'California' THEN 'California'
when province_state like '%, CO'or province_state = 'Colorado' THEN 'Colorado'
when province_state like '%, CT'or province_state = 'Connecticut' THEN 'Connecticut'
when province_state like '%, DE'or province_state = 'Delaware' THEN 'Delaware'
when province_state like '%, FL'or province_state = 'Florida' THEN 'Florida'
when province_state like '%, GA'or province_state = 'Georgia' THEN 'Georgia'
when province_state like '%, HI'or province_state = 'Hawaii' THEN 'Hawaii'
when province_state like '%, ID'or province_state = 'Idaho' THEN 'Idaho'
when province_state like '%, IL'or province_state = 'Illinois' THEN 'Illinois'
when province_state like '%, IN'or province_state = 'Indiana' THEN 'Indiana'
when province_state like '%, IA'or province_state = 'Iowa' THEN 'Iowa'
when province_state like '%, KS'or province_state = 'Kansas' THEN 'Kansas'
when province_state like '%, KY'or province_state = 'Kentucky' THEN 'Kentucky'
when province_state like '%, LA'or province_state = 'Louisiana' THEN 'Louisiana'
when province_state like '%, ME'or province_state = 'Maine' THEN 'Maine'
when province_state like '%, MD'or province_state = 'Maryland' THEN 'Maryland'
when province_state like '%, MA'or province_state = 'Massachusetts' THEN 'Massachusetts'
when province_state like '%, MI'or province_state = 'Michigan' THEN 'Michigan'
when province_state like '%, MN'or province_state = 'Minnesota' THEN 'Minnesota'
when province_state like '%, MS'or province_state = 'Mississippi' THEN 'Mississippi'
when province_state like '%, MO'or province_state = 'Missouri' THEN 'Missouri'
when province_state like '%, MT'or province_state = 'Montana' THEN 'Montana'
when province_state like '%, NE'or province_state = 'Nebraska' THEN 'Nebraska'
when province_state like '%, NV'or province_state = 'Nevada' THEN 'Nevada'
when province_state like '%, NH'or province_state = 'New Hampshire' THEN 'New Hampshire'
when province_state like '%, NJ'or province_state = 'New Jersey' THEN 'New Jersey'
when province_state like '%, NM'or province_state = 'New Mexico' THEN 'New Mexico'
when province_state like '%, NY'or province_state = 'New York' THEN 'New York'
when province_state like '%, NC'or province_state = 'North Carolina' THEN 'North Carolina'
when province_state like '%, ND'or province_state = 'North Dakota' THEN 'North Dakota'
when province_state like '%, OH'or province_state = 'Ohio' THEN 'Ohio'
when province_state like '%, OK'or province_state = 'Oklahoma' THEN 'Oklahoma'
when province_state like '%, OR'or province_state = 'Oregon' THEN 'Oregon'
when province_state like '%, PA'or province_state = 'Pennsylvania' THEN 'Pennsylvania'
when province_state like '%, RI'or province_state = 'Rhode Island' THEN 'Rhode Island'
when province_state like '%, SC'or province_state = 'South Carolina' THEN 'South Carolina'
when province_state like '%, SD'or province_state = 'South Dakota' THEN 'South Dakota'
when province_state like '%, TN'or province_state = 'Tennessee' THEN 'Tennessee'
when province_state like '%, TX'or province_state = 'Texas' THEN 'Texas'
when province_state like '%, UT'or province_state = 'Utah' THEN 'Utah'
when province_state like '%, VT'or province_state = 'Vermont' THEN 'Vermont'
when province_state like '%, VA'or province_state = 'Virginia' THEN 'Virginia'
when province_state like '%, WA'or province_state = 'Washington' THEN 'Washington'
when province_state like '%, WV'or province_state = 'West Virginia' THEN 'West Virginia'
when province_state like '%, WI'or province_state = 'Wisconsin' THEN 'Wisconsin'
when province_state like '%, WY'or province_state = 'Wyoming' THEN 'Wyoming'
else 'everywhere else in the world' end as state,

      sum(confirmed) as total_confirmed_to_date,

      sum(deaths) as total_deaths_to_date,

      sum(recovered) as total_recoveries_to_date

      FROM `bigquery-public-data.covid19_jhu_csse.summary` new_table
      INNER JOIN (SELECT MAX(date) as maxdate FROM `bigquery-public-data.covid19_jhu_csse.summary`) other_table
      on new_table.date=other_table.maxdate
      where country_region = 'US'
      group by 1
       ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    map_layer_name: us_states
    primary_key: yes
  }

  measure: total_confirmed_to_date {
    type: sum
    sql: ${TABLE}.total_confirmed_to_date ;;
  }

  measure: total_deaths_to_date {
    type: sum
    sql: ${TABLE}.total_deaths_to_date ;;
  }

  measure: total_recoveries_to_date {
    type: sum
    sql: ${TABLE}.total_recoveries_to_date ;;
  }



  }
