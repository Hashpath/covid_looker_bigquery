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
    sql: case

    when ${province_state} like '%, AL'or ${province_state} = 'Alabama' THEN 'Alabama'
when ${province_state} like '%, AK'or ${province_state} = 'Alaska' THEN 'Alaska'
when ${province_state} like '%, AZ'or ${province_state} = 'Arizona' THEN 'Arizona'
when ${province_state} like '%, AR'or ${province_state} = 'Arkansas' THEN 'Arkansas'
when ${province_state} like '%, CA'or ${province_state} = 'California' THEN 'California'
when ${province_state} like '%, CO'or ${province_state} = 'Colorado' THEN 'Colorado'
when ${province_state} like '%, CT'or ${province_state} = 'Connecticut' THEN 'Connecticut'
when ${province_state} like '%, DE'or ${province_state} = 'Delaware' THEN 'Delaware'
when ${province_state} like '%, FL'or ${province_state} = 'Florida' THEN 'Florida'
when ${province_state} like '%, GA'or ${province_state} = 'Georgia' THEN 'Georgia'
when ${province_state} like '%, HI'or ${province_state} = 'Hawaii' THEN 'Hawaii'
when ${province_state} like '%, ID'or ${province_state} = 'Idaho' THEN 'Idaho'
when ${province_state} like '%, IL'or ${province_state} = 'Illinois' THEN 'Illinois'
when ${province_state} like '%, IN'or ${province_state} = 'Indiana' THEN 'Indiana'
when ${province_state} like '%, IA'or ${province_state} = 'Iowa' THEN 'Iowa'
when ${province_state} like '%, KS'or ${province_state} = 'Kansas' THEN 'Kansas'
when ${province_state} like '%, KY'or ${province_state} = 'Kentucky' THEN 'Kentucky'
when ${province_state} like '%, LA'or ${province_state} = 'Louisiana' THEN 'Louisiana'
when ${province_state} like '%, ME'or ${province_state} = 'Maine' THEN 'Maine'
when ${province_state} like '%, MD'or ${province_state} = 'Maryland' THEN 'Maryland'
when ${province_state} like '%, MA'or ${province_state} = 'Massachusetts' THEN 'Massachusetts'
when ${province_state} like '%, MI'or ${province_state} = 'Michigan' THEN 'Michigan'
when ${province_state} like '%, MN'or ${province_state} = 'Minnesota' THEN 'Minnesota'
when ${province_state} like '%, MS'or ${province_state} = 'Mississippi' THEN 'Mississippi'
when ${province_state} like '%, MO'or ${province_state} = 'Missouri' THEN 'Missouri'
when ${province_state} like '%, MT'or ${province_state} = 'Montana' THEN 'Montana'
when ${province_state} like '%, NE'or ${province_state} = 'Nebraska' THEN 'Nebraska'
when ${province_state} like '%, NV'or ${province_state} = 'Nevada' THEN 'Nevada'
when ${province_state} like '%, NH'or ${province_state} = 'New Hampshire' THEN 'New Hampshire'
when ${province_state} like '%, NJ'or ${province_state} = 'New Jersey' THEN 'New Jersey'
when ${province_state} like '%, NM'or ${province_state} = 'New Mexico' THEN 'New Mexico'
when ${province_state} like '%, NY'or ${province_state} = 'New York' THEN 'New York'
when ${province_state} like '%, NC'or ${province_state} = 'North Carolina' THEN 'North Carolina'
when ${province_state} like '%, ND'or ${province_state} = 'North Dakota' THEN 'North Dakota'
when ${province_state} like '%, OH'or ${province_state} = 'Ohio' THEN 'Ohio'
when ${province_state} like '%, OK'or ${province_state} = 'Oklahoma' THEN 'Oklahoma'
when ${province_state} like '%, OR'or ${province_state} = 'Oregon' THEN 'Oregon'
when ${province_state} like '%, PA'or ${province_state} = 'Pennsylvania' THEN 'Pennsylvania'
when ${province_state} like '%, RI'or ${province_state} = 'Rhode Island' THEN 'Rhode Island'
when ${province_state} like '%, SC'or ${province_state} = 'South Carolina' THEN 'South Carolina'
when ${province_state} like '%, SD'or ${province_state} = 'South Dakota' THEN 'South Dakota'
when ${province_state} like '%, TN'or ${province_state} = 'Tennessee' THEN 'Tennessee'
when ${province_state} like '%, TX'or ${province_state} = 'Texas' THEN 'Texas'
when ${province_state} like '%, UT'or ${province_state} = 'Utah' THEN 'Utah'
when ${province_state} like '%, VT'or ${province_state} = 'Vermont' THEN 'Vermont'
when ${province_state} like '%, VA'or ${province_state} = 'Virginia' THEN 'Virginia'
when ${province_state} like '%, WA'or ${province_state} = 'Washington' THEN 'Washington'
when ${province_state} like '%, WV'or ${province_state} = 'West Virginia' THEN 'West Virginia'
when ${province_state} like '%, WI'or ${province_state} = 'Wisconsin' THEN 'Wisconsin'
when ${province_state} like '%, WY'or ${province_state} = 'Wyoming' THEN 'Wyoming'


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
