# If necessary, uncomment the line below to include explore_source.
# include: "covid.model.lkml"

view: snapshot {
  derived_table: {
    explore_source: summary_changes {
      column: death_rate {}
      column: new_cases {}
      column: total_confirmed_to_date {}
      column: total_deaths_to_date {}
      column: new_deaths {}
      column: new_cases_perc {}
      column: cleaned_state {}
      column: last_report_date { field: last_report_date.last_report_date }
      filters: {
        field: last_report_date.last_report_date
        value: "NOT NULL"
      }
      filters: {
        field: summary_changes.cleaned_state
        value: "Massachusetts"
      }
    }
  }
  dimension: death_rate {
    value_format: "0.00%"
    type: number
  }
  dimension: new_cases {
    type: number
  }
  dimension: total_confirmed_to_date {
    type: number
  }
  dimension: total_deaths_to_date {
    type: number
  }
  dimension: new_deaths {
    type: number
  }
  dimension: new_cases_perc {
    value_format: "0.00%"
    type: number
  }
  dimension: cleaned_state {
  }
  dimension: last_report_date {
    type: date
  }

  dimension: text {
    type: string
    sql: ${cleaned_state} ;;
    html:

    <div style="font-size:18px">Confirmed Cases:
    <b> {{ snapshot.total_confirmed_to_date._rendered_value }} </b>
    </div>
    <div style="font-size:14px">
    <b>{{ snapshot.new_cases._rendered_value }}</b> new cases, a <b>{{ snapshot.new_cases_perc._rendered_value }}</b>
        since previous day.
    </div>
      <div style="font-size:18px;padding-top:10px">Total Deaths:
    <b> {{ snapshot.total_deaths_to_date._rendered_value }} </b>
    </div>
    <div style="font-size:14px">
   <b>{{ snapshot.new_deaths._rendered_value }}</b> new deaths.</b>
    </div>

    <div style="font-size:12px;padding-top:10px">

    Last updated:<b> {{ snapshot.last_report_date._rendered_value }} </b>
        </div>
;;
  }


}
