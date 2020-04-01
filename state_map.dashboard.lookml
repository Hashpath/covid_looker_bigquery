- dashboard: covid__ma
  title: Covid - MA
  layout: newspaper
  elements:
  - title: confirmed cases by state
    name: confirmed cases by state
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.date_date, summary_changes.province_state, summary_changes.total_confirmed_to_date]
    pivots: [summary_changes.province_state]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.country_region: US
      summary_changes.date_date: after 2020/03/14
      summary_changes.province_state: ''
    sorts: [summary_changes.date_date desc, summary_changes.province_state]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: summary_changes.total_confirmed_to_date,
            id: Alabama - summary_changes.total_confirmed_to_date, name: Alabama},
          {axisId: summary_changes.total_confirmed_to_date, id: Alaska - summary_changes.total_confirmed_to_date,
            name: Alaska}, {axisId: summary_changes.total_confirmed_to_date, id: American
              Samoa - summary_changes.total_confirmed_to_date, name: American Samoa},
          {axisId: summary_changes.total_confirmed_to_date, id: Arizona - summary_changes.total_confirmed_to_date,
            name: Arizona}, {axisId: summary_changes.total_confirmed_to_date, id: Arkansas
              - summary_changes.total_confirmed_to_date, name: Arkansas}, {axisId: summary_changes.total_confirmed_to_date,
            id: California - summary_changes.total_confirmed_to_date, name: California},
          {axisId: summary_changes.total_confirmed_to_date, id: Colorado - summary_changes.total_confirmed_to_date,
            name: Colorado}, {axisId: summary_changes.total_confirmed_to_date, id: Connecticut
              - summary_changes.total_confirmed_to_date, name: Connecticut}, {axisId: summary_changes.total_confirmed_to_date,
            id: Delaware - summary_changes.total_confirmed_to_date, name: Delaware},
          {axisId: summary_changes.total_confirmed_to_date, id: Diamond Princess -
              summary_changes.total_confirmed_to_date, name: Diamond Princess}, {
            axisId: summary_changes.total_confirmed_to_date, id: District of Columbia
              - summary_changes.total_confirmed_to_date, name: District of Columbia},
          {axisId: summary_changes.total_confirmed_to_date, id: Florida - summary_changes.total_confirmed_to_date,
            name: Florida}, {axisId: summary_changes.total_confirmed_to_date, id: Georgia
              - summary_changes.total_confirmed_to_date, name: Georgia}, {axisId: summary_changes.total_confirmed_to_date,
            id: Grand Princess - summary_changes.total_confirmed_to_date, name: Grand
              Princess}, {axisId: summary_changes.total_confirmed_to_date, id: Guam
              - summary_changes.total_confirmed_to_date, name: Guam}, {axisId: summary_changes.total_confirmed_to_date,
            id: Hawaii - summary_changes.total_confirmed_to_date, name: Hawaii}, {
            axisId: summary_changes.total_confirmed_to_date, id: Idaho - summary_changes.total_confirmed_to_date,
            name: Idaho}, {axisId: summary_changes.total_confirmed_to_date, id: Illinois
              - summary_changes.total_confirmed_to_date, name: Illinois}, {axisId: summary_changes.total_confirmed_to_date,
            id: Indiana - summary_changes.total_confirmed_to_date, name: Indiana},
          {axisId: summary_changes.total_confirmed_to_date, id: Iowa - summary_changes.total_confirmed_to_date,
            name: Iowa}, {axisId: summary_changes.total_confirmed_to_date, id: Kansas
              - summary_changes.total_confirmed_to_date, name: Kansas}, {axisId: summary_changes.total_confirmed_to_date,
            id: Kentucky - summary_changes.total_confirmed_to_date, name: Kentucky},
          {axisId: summary_changes.total_confirmed_to_date, id: Louisiana - summary_changes.total_confirmed_to_date,
            name: Louisiana}, {axisId: summary_changes.total_confirmed_to_date, id: Maine
              - summary_changes.total_confirmed_to_date, name: Maine}, {axisId: summary_changes.total_confirmed_to_date,
            id: Maryland - summary_changes.total_confirmed_to_date, name: Maryland},
          {axisId: summary_changes.total_confirmed_to_date, id: Massachusetts - summary_changes.total_confirmed_to_date,
            name: Massachusetts}, {axisId: summary_changes.total_confirmed_to_date,
            id: Michigan - summary_changes.total_confirmed_to_date, name: Michigan},
          {axisId: summary_changes.total_confirmed_to_date, id: Minnesota - summary_changes.total_confirmed_to_date,
            name: Minnesota}, {axisId: summary_changes.total_confirmed_to_date, id: Mississippi
              - summary_changes.total_confirmed_to_date, name: Mississippi}, {axisId: summary_changes.total_confirmed_to_date,
            id: Missouri - summary_changes.total_confirmed_to_date, name: Missouri},
          {axisId: summary_changes.total_confirmed_to_date, id: Montana - summary_changes.total_confirmed_to_date,
            name: Montana}, {axisId: summary_changes.total_confirmed_to_date, id: Nebraska
              - summary_changes.total_confirmed_to_date, name: Nebraska}, {axisId: summary_changes.total_confirmed_to_date,
            id: Nevada - summary_changes.total_confirmed_to_date, name: Nevada}, {
            axisId: summary_changes.total_confirmed_to_date, id: New Hampshire - summary_changes.total_confirmed_to_date,
            name: New Hampshire}, {axisId: summary_changes.total_confirmed_to_date,
            id: New Jersey - summary_changes.total_confirmed_to_date, name: New Jersey},
          {axisId: summary_changes.total_confirmed_to_date, id: New Mexico - summary_changes.total_confirmed_to_date,
            name: New Mexico}, {axisId: summary_changes.total_confirmed_to_date, id: New
              York - summary_changes.total_confirmed_to_date, name: New York}, {axisId: summary_changes.total_confirmed_to_date,
            id: North Carolina - summary_changes.total_confirmed_to_date, name: North
              Carolina}, {axisId: summary_changes.total_confirmed_to_date, id: North
              Dakota - summary_changes.total_confirmed_to_date, name: North Dakota},
          {axisId: summary_changes.total_confirmed_to_date, id: Northern Mariana Islands
              - summary_changes.total_confirmed_to_date, name: Northern Mariana Islands},
          {axisId: summary_changes.total_confirmed_to_date, id: Ohio - summary_changes.total_confirmed_to_date,
            name: Ohio}, {axisId: summary_changes.total_confirmed_to_date, id: Oklahoma
              - summary_changes.total_confirmed_to_date, name: Oklahoma}, {axisId: summary_changes.total_confirmed_to_date,
            id: Oregon - summary_changes.total_confirmed_to_date, name: Oregon}, {
            axisId: summary_changes.total_confirmed_to_date, id: Pennsylvania - summary_changes.total_confirmed_to_date,
            name: Pennsylvania}, {axisId: summary_changes.total_confirmed_to_date,
            id: Puerto Rico - summary_changes.total_confirmed_to_date, name: Puerto
              Rico}, {axisId: summary_changes.total_confirmed_to_date, id: Recovered
              - summary_changes.total_confirmed_to_date, name: Recovered}, {axisId: summary_changes.total_confirmed_to_date,
            id: Rhode Island - summary_changes.total_confirmed_to_date, name: Rhode
              Island}, {axisId: summary_changes.total_confirmed_to_date, id: South
              Carolina - summary_changes.total_confirmed_to_date, name: South Carolina},
          {axisId: summary_changes.total_confirmed_to_date, id: South Dakota - summary_changes.total_confirmed_to_date,
            name: South Dakota}, {axisId: summary_changes.total_confirmed_to_date,
            id: Tennessee - summary_changes.total_confirmed_to_date, name: Tennessee}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Alabama - summary_changes.new_cases: "#929292"
      Alaska - summary_changes.new_cases: "#929292"
      Arizona - summary_changes.new_cases: "#929292"
      Arkansas - summary_changes.new_cases: "#929292"
      California - summary_changes.new_cases: "#929292"
      Colorado - summary_changes.new_cases: "#929292"
      Connecticut - summary_changes.new_cases: "#929292"
      Delaware - summary_changes.new_cases: "#929292"
      Diamond Princess - summary_changes.new_cases: "#929292"
      Florida - summary_changes.new_cases: "#929292"
      District of Columbia - summary_changes.new_cases: "#929292"
      Georgia - summary_changes.new_cases: "#929292"
      Guam - summary_changes.new_cases: "#929292"
      Grand Princess - summary_changes.new_cases: "#929292"
      Hawaii - summary_changes.new_cases: "#929292"
      Idaho - summary_changes.new_cases: "#929292"
      Illinois - summary_changes.new_cases: "#929292"
      Indiana - summary_changes.new_cases: "#929292"
      Iowa - summary_changes.new_cases: "#929292"
      Kansas - summary_changes.new_cases: "#929292"
      Kentucky - summary_changes.new_cases: "#929292"
      Louisiana - summary_changes.new_cases: "#929292"
      Maine - summary_changes.new_cases: "#929292"
      Maryland - summary_changes.new_cases: "#929292"
      Massachusetts - summary_changes.new_cases: "#ed6168"
      Michigan - summary_changes.new_cases: "#929292"
      Minnesota - summary_changes.new_cases: "#929292"
      Mississippi - summary_changes.new_cases: "#929292"
      Missouri - summary_changes.new_cases: "#929292"
      Montana - summary_changes.new_cases: "#929292"
      Nebraska - summary_changes.new_cases: "#929292"
      Nevada - summary_changes.new_cases: "#929292"
      New Hampshire - summary_changes.new_cases: "#929292"
      New Jersey - summary_changes.new_cases: "#929292"
      New Mexico - summary_changes.new_cases: "#929292"
      New York - summary_changes.new_cases: "#929292"
      North Carolina - summary_changes.new_cases: "#929292"
      Northern Mariana Islands - summary_changes.new_cases: "#929292"
      Ohio - summary_changes.new_cases: "#929292"
      Oklahoma - summary_changes.new_cases: "#929292"
      Oregon - summary_changes.new_cases: "#929292"
      Pennsylvania - summary_changes.new_cases: "#929292"
      Recovered - summary_changes.new_cases: "#929292"
      Puerto Rico - summary_changes.new_cases: "#929292"
      Rhode Island - summary_changes.new_cases: "#929292"
      South Carolina - summary_changes.new_cases: "#929292"
      South Dakota - summary_changes.new_cases: "#929292"
      Tennessee - summary_changes.new_cases: "#929292"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    row: 27
    col: 0
    width: 8
    height: 6
  - title: Confirmed Cases by County
    name: Confirmed Cases by County
    model: covid
    explore: summary
    type: looker_grid
    fields: [last_report_date.county_subregion, summary.sum_confirmed]
    filters:
      last_report_date.last_report_date: NOT NULL
      summary.province_state: Massachusetts
    sorts: [summary.sum_confirmed desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      summary.sum_confirmed: Confirmed Cases
      last_report_date.county_subregion: County
    series_cell_visualizations:
      summary.sum_confirmed:
        is_active: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_min: 1
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 3
    col: 0
    width: 11
    height: 9
  - title: Total Confirmed Cases
    name: Total Confirmed Cases
    model: covid
    explore: summary
    type: single_value
    fields: [summary.sum_confirmed]
    filters:
      last_report_date.last_report_date: NOT NULL
      summary.province_state: Massachusetts
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_min: 1
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 0
    width: 11
    height: 3
  - title: New Tile
    name: New Tile
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.date_date, summary_changes.total_confirmed_to_date, summary_changes.country_region]
    pivots: [summary_changes.country_region]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.country_region: China,US,South Korea,Spain,Germany,Italy,UK,France
      summary_changes.date_date: after 2020/03/12
    sorts: [summary_changes.date_date desc, summary_changes.country_region]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: summary_changes.total_confirmed_to_date,
            id: Alabama - summary_changes.total_confirmed_to_date, name: Alabama},
          {axisId: summary_changes.total_confirmed_to_date, id: Alaska - summary_changes.total_confirmed_to_date,
            name: Alaska}, {axisId: summary_changes.total_confirmed_to_date, id: American
              Samoa - summary_changes.total_confirmed_to_date, name: American Samoa},
          {axisId: summary_changes.total_confirmed_to_date, id: Arizona - summary_changes.total_confirmed_to_date,
            name: Arizona}, {axisId: summary_changes.total_confirmed_to_date, id: Arkansas
              - summary_changes.total_confirmed_to_date, name: Arkansas}, {axisId: summary_changes.total_confirmed_to_date,
            id: California - summary_changes.total_confirmed_to_date, name: California},
          {axisId: summary_changes.total_confirmed_to_date, id: Colorado - summary_changes.total_confirmed_to_date,
            name: Colorado}, {axisId: summary_changes.total_confirmed_to_date, id: Connecticut
              - summary_changes.total_confirmed_to_date, name: Connecticut}, {axisId: summary_changes.total_confirmed_to_date,
            id: Delaware - summary_changes.total_confirmed_to_date, name: Delaware},
          {axisId: summary_changes.total_confirmed_to_date, id: Diamond Princess -
              summary_changes.total_confirmed_to_date, name: Diamond Princess}, {
            axisId: summary_changes.total_confirmed_to_date, id: District of Columbia
              - summary_changes.total_confirmed_to_date, name: District of Columbia},
          {axisId: summary_changes.total_confirmed_to_date, id: Florida - summary_changes.total_confirmed_to_date,
            name: Florida}, {axisId: summary_changes.total_confirmed_to_date, id: Georgia
              - summary_changes.total_confirmed_to_date, name: Georgia}, {axisId: summary_changes.total_confirmed_to_date,
            id: Grand Princess - summary_changes.total_confirmed_to_date, name: Grand
              Princess}, {axisId: summary_changes.total_confirmed_to_date, id: Guam
              - summary_changes.total_confirmed_to_date, name: Guam}, {axisId: summary_changes.total_confirmed_to_date,
            id: Hawaii - summary_changes.total_confirmed_to_date, name: Hawaii}, {
            axisId: summary_changes.total_confirmed_to_date, id: Idaho - summary_changes.total_confirmed_to_date,
            name: Idaho}, {axisId: summary_changes.total_confirmed_to_date, id: Illinois
              - summary_changes.total_confirmed_to_date, name: Illinois}, {axisId: summary_changes.total_confirmed_to_date,
            id: Indiana - summary_changes.total_confirmed_to_date, name: Indiana},
          {axisId: summary_changes.total_confirmed_to_date, id: Iowa - summary_changes.total_confirmed_to_date,
            name: Iowa}, {axisId: summary_changes.total_confirmed_to_date, id: Kansas
              - summary_changes.total_confirmed_to_date, name: Kansas}, {axisId: summary_changes.total_confirmed_to_date,
            id: Kentucky - summary_changes.total_confirmed_to_date, name: Kentucky},
          {axisId: summary_changes.total_confirmed_to_date, id: Louisiana - summary_changes.total_confirmed_to_date,
            name: Louisiana}, {axisId: summary_changes.total_confirmed_to_date, id: Maine
              - summary_changes.total_confirmed_to_date, name: Maine}, {axisId: summary_changes.total_confirmed_to_date,
            id: Maryland - summary_changes.total_confirmed_to_date, name: Maryland},
          {axisId: summary_changes.total_confirmed_to_date, id: Massachusetts - summary_changes.total_confirmed_to_date,
            name: Massachusetts}, {axisId: summary_changes.total_confirmed_to_date,
            id: Michigan - summary_changes.total_confirmed_to_date, name: Michigan},
          {axisId: summary_changes.total_confirmed_to_date, id: Minnesota - summary_changes.total_confirmed_to_date,
            name: Minnesota}, {axisId: summary_changes.total_confirmed_to_date, id: Mississippi
              - summary_changes.total_confirmed_to_date, name: Mississippi}, {axisId: summary_changes.total_confirmed_to_date,
            id: Missouri - summary_changes.total_confirmed_to_date, name: Missouri},
          {axisId: summary_changes.total_confirmed_to_date, id: Montana - summary_changes.total_confirmed_to_date,
            name: Montana}, {axisId: summary_changes.total_confirmed_to_date, id: Nebraska
              - summary_changes.total_confirmed_to_date, name: Nebraska}, {axisId: summary_changes.total_confirmed_to_date,
            id: Nevada - summary_changes.total_confirmed_to_date, name: Nevada}, {
            axisId: summary_changes.total_confirmed_to_date, id: New Hampshire - summary_changes.total_confirmed_to_date,
            name: New Hampshire}, {axisId: summary_changes.total_confirmed_to_date,
            id: New Jersey - summary_changes.total_confirmed_to_date, name: New Jersey},
          {axisId: summary_changes.total_confirmed_to_date, id: New Mexico - summary_changes.total_confirmed_to_date,
            name: New Mexico}, {axisId: summary_changes.total_confirmed_to_date, id: New
              York - summary_changes.total_confirmed_to_date, name: New York}, {axisId: summary_changes.total_confirmed_to_date,
            id: North Carolina - summary_changes.total_confirmed_to_date, name: North
              Carolina}, {axisId: summary_changes.total_confirmed_to_date, id: North
              Dakota - summary_changes.total_confirmed_to_date, name: North Dakota},
          {axisId: summary_changes.total_confirmed_to_date, id: Northern Mariana Islands
              - summary_changes.total_confirmed_to_date, name: Northern Mariana Islands},
          {axisId: summary_changes.total_confirmed_to_date, id: Ohio - summary_changes.total_confirmed_to_date,
            name: Ohio}, {axisId: summary_changes.total_confirmed_to_date, id: Oklahoma
              - summary_changes.total_confirmed_to_date, name: Oklahoma}, {axisId: summary_changes.total_confirmed_to_date,
            id: Oregon - summary_changes.total_confirmed_to_date, name: Oregon}, {
            axisId: summary_changes.total_confirmed_to_date, id: Pennsylvania - summary_changes.total_confirmed_to_date,
            name: Pennsylvania}, {axisId: summary_changes.total_confirmed_to_date,
            id: Puerto Rico - summary_changes.total_confirmed_to_date, name: Puerto
              Rico}, {axisId: summary_changes.total_confirmed_to_date, id: Recovered
              - summary_changes.total_confirmed_to_date, name: Recovered}, {axisId: summary_changes.total_confirmed_to_date,
            id: Rhode Island - summary_changes.total_confirmed_to_date, name: Rhode
              Island}, {axisId: summary_changes.total_confirmed_to_date, id: South
              Carolina - summary_changes.total_confirmed_to_date, name: South Carolina},
          {axisId: summary_changes.total_confirmed_to_date, id: South Dakota - summary_changes.total_confirmed_to_date,
            name: South Dakota}, {axisId: summary_changes.total_confirmed_to_date,
            id: Tennessee - summary_changes.total_confirmed_to_date, name: Tennessee}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      Alabama - summary_changes.new_cases: "#929292"
      Alaska - summary_changes.new_cases: "#929292"
      Arizona - summary_changes.new_cases: "#929292"
      Arkansas - summary_changes.new_cases: "#929292"
      California - summary_changes.new_cases: "#929292"
      Colorado - summary_changes.new_cases: "#929292"
      Connecticut - summary_changes.new_cases: "#929292"
      Delaware - summary_changes.new_cases: "#929292"
      Diamond Princess - summary_changes.new_cases: "#929292"
      Florida - summary_changes.new_cases: "#929292"
      District of Columbia - summary_changes.new_cases: "#929292"
      Georgia - summary_changes.new_cases: "#929292"
      Guam - summary_changes.new_cases: "#929292"
      Grand Princess - summary_changes.new_cases: "#929292"
      Hawaii - summary_changes.new_cases: "#929292"
      Idaho - summary_changes.new_cases: "#929292"
      Illinois - summary_changes.new_cases: "#929292"
      Indiana - summary_changes.new_cases: "#929292"
      Iowa - summary_changes.new_cases: "#929292"
      Kansas - summary_changes.new_cases: "#929292"
      Kentucky - summary_changes.new_cases: "#929292"
      Louisiana - summary_changes.new_cases: "#929292"
      Maine - summary_changes.new_cases: "#929292"
      Maryland - summary_changes.new_cases: "#929292"
      Massachusetts - summary_changes.new_cases: "#ed6168"
      Michigan - summary_changes.new_cases: "#929292"
      Minnesota - summary_changes.new_cases: "#929292"
      Mississippi - summary_changes.new_cases: "#929292"
      Missouri - summary_changes.new_cases: "#929292"
      Montana - summary_changes.new_cases: "#929292"
      Nebraska - summary_changes.new_cases: "#929292"
      Nevada - summary_changes.new_cases: "#929292"
      New Hampshire - summary_changes.new_cases: "#929292"
      New Jersey - summary_changes.new_cases: "#929292"
      New Mexico - summary_changes.new_cases: "#929292"
      New York - summary_changes.new_cases: "#929292"
      North Carolina - summary_changes.new_cases: "#929292"
      Northern Mariana Islands - summary_changes.new_cases: "#929292"
      Ohio - summary_changes.new_cases: "#929292"
      Oklahoma - summary_changes.new_cases: "#929292"
      Oregon - summary_changes.new_cases: "#929292"
      Pennsylvania - summary_changes.new_cases: "#929292"
      Recovered - summary_changes.new_cases: "#929292"
      Puerto Rico - summary_changes.new_cases: "#929292"
      Rhode Island - summary_changes.new_cases: "#929292"
      South Carolina - summary_changes.new_cases: "#929292"
      South Dakota - summary_changes.new_cases: "#929292"
      Tennessee - summary_changes.new_cases: "#929292"
      China - summary_changes.total_confirmed_to_date: "#929292"
      France - summary_changes.total_confirmed_to_date: "#929292"
      Italy - summary_changes.total_confirmed_to_date: "#929292"
      Spain - summary_changes.total_confirmed_to_date: "#929292"
      US - summary_changes.total_confirmed_to_date: "#ed6168"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    row: 33
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.date_date, summary_changes.total_confirmed_to_date, summary_changes.country_region]
    pivots: [summary_changes.country_region]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.country_region: China,US,South Korea,Spain,Germany,Italy,UK,France,Ireland,Mainland
        China
    sorts: [summary_changes.date_date desc, summary_changes.country_region]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: summary_changes.total_confirmed_to_date,
            id: China - summary_changes.total_confirmed_to_date, name: China}, {axisId: summary_changes.total_confirmed_to_date,
            id: France - summary_changes.total_confirmed_to_date, name: France}, {
            axisId: summary_changes.total_confirmed_to_date, id: Germany - summary_changes.total_confirmed_to_date,
            name: Germany}, {axisId: summary_changes.total_confirmed_to_date, id: Italy
              - summary_changes.total_confirmed_to_date, name: Italy}, {axisId: summary_changes.total_confirmed_to_date,
            id: Spain - summary_changes.total_confirmed_to_date, name: Spain}, {axisId: summary_changes.total_confirmed_to_date,
            id: US - summary_changes.total_confirmed_to_date, name: US}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: log}]
    hide_legend: true
    series_types: {}
    series_colors:
      Alabama - summary_changes.new_cases: "#929292"
      Alaska - summary_changes.new_cases: "#929292"
      Arizona - summary_changes.new_cases: "#929292"
      Arkansas - summary_changes.new_cases: "#929292"
      California - summary_changes.new_cases: "#929292"
      Colorado - summary_changes.new_cases: "#929292"
      Connecticut - summary_changes.new_cases: "#929292"
      Delaware - summary_changes.new_cases: "#929292"
      Diamond Princess - summary_changes.new_cases: "#929292"
      Florida - summary_changes.new_cases: "#929292"
      District of Columbia - summary_changes.new_cases: "#929292"
      Georgia - summary_changes.new_cases: "#929292"
      Guam - summary_changes.new_cases: "#929292"
      Grand Princess - summary_changes.new_cases: "#929292"
      Hawaii - summary_changes.new_cases: "#929292"
      Idaho - summary_changes.new_cases: "#929292"
      Illinois - summary_changes.new_cases: "#929292"
      Indiana - summary_changes.new_cases: "#929292"
      Iowa - summary_changes.new_cases: "#929292"
      Kansas - summary_changes.new_cases: "#929292"
      Kentucky - summary_changes.new_cases: "#929292"
      Louisiana - summary_changes.new_cases: "#929292"
      Maine - summary_changes.new_cases: "#929292"
      Maryland - summary_changes.new_cases: "#929292"
      Massachusetts - summary_changes.new_cases: "#ed6168"
      Michigan - summary_changes.new_cases: "#929292"
      Minnesota - summary_changes.new_cases: "#929292"
      Mississippi - summary_changes.new_cases: "#929292"
      Missouri - summary_changes.new_cases: "#929292"
      Montana - summary_changes.new_cases: "#929292"
      Nebraska - summary_changes.new_cases: "#929292"
      Nevada - summary_changes.new_cases: "#929292"
      New Hampshire - summary_changes.new_cases: "#929292"
      New Jersey - summary_changes.new_cases: "#929292"
      New Mexico - summary_changes.new_cases: "#929292"
      New York - summary_changes.new_cases: "#929292"
      North Carolina - summary_changes.new_cases: "#929292"
      Northern Mariana Islands - summary_changes.new_cases: "#929292"
      Ohio - summary_changes.new_cases: "#929292"
      Oklahoma - summary_changes.new_cases: "#929292"
      Oregon - summary_changes.new_cases: "#929292"
      Pennsylvania - summary_changes.new_cases: "#929292"
      Recovered - summary_changes.new_cases: "#929292"
      Puerto Rico - summary_changes.new_cases: "#929292"
      Rhode Island - summary_changes.new_cases: "#929292"
      South Carolina - summary_changes.new_cases: "#929292"
      South Dakota - summary_changes.new_cases: "#929292"
      Tennessee - summary_changes.new_cases: "#929292"
      China - summary_changes.total_confirmed_to_date: "#929292"
      France - summary_changes.total_confirmed_to_date: "#929292"
      Italy - summary_changes.total_confirmed_to_date: "#929292"
      Spain - summary_changes.total_confirmed_to_date: "#929292"
      US - summary_changes.total_confirmed_to_date: "#ed6168"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    row: 27
    col: 16
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (3)
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.date_date, summary_changes.country_or_subregion, summary_changes.total_confirmed_to_date]
    pivots: [summary_changes.country_or_subregion]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.date_date: after 2020/03/18
      summary_changes.province_state: Massachusetts
      summary_changes.country_or_subregion: "-NULL"
    sorts: [summary_changes.country_or_subregion, summary_changes.date_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: summary_changes.total_confirmed_to_date,
            id: Barnstable - summary_changes.total_confirmed_to_date, name: Barnstable},
          {axisId: summary_changes.total_confirmed_to_date, id: Berkshire - summary_changes.total_confirmed_to_date,
            name: Berkshire}, {axisId: summary_changes.total_confirmed_to_date, id: Bristol
              - summary_changes.total_confirmed_to_date, name: Bristol}, {axisId: summary_changes.total_confirmed_to_date,
            id: Brockton - summary_changes.total_confirmed_to_date, name: Brockton},
          {axisId: summary_changes.total_confirmed_to_date, id: Dukes - summary_changes.total_confirmed_to_date,
            name: Dukes}, {axisId: summary_changes.total_confirmed_to_date, id: Dukes
              and Nantucket - summary_changes.total_confirmed_to_date, name: Dukes
              and Nantucket}, {axisId: summary_changes.total_confirmed_to_date, id: Essex
              - summary_changes.total_confirmed_to_date, name: Essex}, {axisId: summary_changes.total_confirmed_to_date,
            id: Franklin - summary_changes.total_confirmed_to_date, name: Franklin},
          {axisId: summary_changes.total_confirmed_to_date, id: Hampden - summary_changes.total_confirmed_to_date,
            name: Hampden}, {axisId: summary_changes.total_confirmed_to_date, id: Hampshire
              - summary_changes.total_confirmed_to_date, name: Hampshire}, {axisId: summary_changes.total_confirmed_to_date,
            id: Middlesex - summary_changes.total_confirmed_to_date, name: Middlesex},
          {axisId: summary_changes.total_confirmed_to_date, id: Nantucket - summary_changes.total_confirmed_to_date,
            name: Nantucket}, {axisId: summary_changes.total_confirmed_to_date, id: Norfolk
              - summary_changes.total_confirmed_to_date, name: Norfolk}, {axisId: summary_changes.total_confirmed_to_date,
            id: Plymouth - summary_changes.total_confirmed_to_date, name: Plymouth},
          {axisId: summary_changes.total_confirmed_to_date, id: Suffolk - summary_changes.total_confirmed_to_date,
            name: Suffolk}, {axisId: summary_changes.total_confirmed_to_date, id: Unassigned
              - summary_changes.total_confirmed_to_date, name: Unassigned}, {axisId: summary_changes.total_confirmed_to_date,
            id: Worcester - summary_changes.total_confirmed_to_date, name: Worcester}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_colors: {}
    defaults_version: 1
    row: 27
    col: 8
    width: 8
    height: 6
  - title: Confirmed Cases
    name: Confirmed Cases
    model: covid
    explore: summary
    type: looker_map
    fields: [summary.location_geom, summary.county_subregion, summary.confirmed]
    filters:
      summary.province_state: Massachusetts
      summary.latitude: not 0
      last_report_date.last_report_date: NOT NULL
    sorts: [summary.location_geom]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_min: 1
    defaults_version: 1
    listen: {}
    row: 0
    col: 11
    width: 13
    height: 12
  - name: "<blank>"
    type: text
    title_text: "<blank>"
    row: 21
    col: 0
    width: 24
    height: 6
  - title: Confirmed Cases in New England (Logarithmic Scale)
    name: Confirmed Cases in New England (Logarithmic Scale)
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.date_date, summary_changes.total_confirmed_to_date, summary_changes.cleaned_state]
    pivots: [summary_changes.cleaned_state]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.country_region: US
      summary_changes.cleaned_state: Maine,Connecticut,Massachusetts,^ New Hampshire,Rhode
        Island,Vermont
    sorts: [summary_changes.date_date desc, summary_changes.cleaned_state]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: summary_changes.total_confirmed_to_date,
            id: China - summary_changes.total_confirmed_to_date, name: China}, {axisId: summary_changes.total_confirmed_to_date,
            id: France - summary_changes.total_confirmed_to_date, name: France}, {
            axisId: summary_changes.total_confirmed_to_date, id: Germany - summary_changes.total_confirmed_to_date,
            name: Germany}, {axisId: summary_changes.total_confirmed_to_date, id: Italy
              - summary_changes.total_confirmed_to_date, name: Italy}, {axisId: summary_changes.total_confirmed_to_date,
            id: Spain - summary_changes.total_confirmed_to_date, name: Spain}, {axisId: summary_changes.total_confirmed_to_date,
            id: US - summary_changes.total_confirmed_to_date, name: US}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: log}]
    hide_legend: true
    series_types: {}
    series_colors:
      Alabama - summary_changes.new_cases: "#929292"
      Alaska - summary_changes.new_cases: "#929292"
      Arizona - summary_changes.new_cases: "#929292"
      Arkansas - summary_changes.new_cases: "#929292"
      California - summary_changes.new_cases: "#929292"
      Colorado - summary_changes.new_cases: "#929292"
      Connecticut - summary_changes.new_cases: "#929292"
      Delaware - summary_changes.new_cases: "#929292"
      Diamond Princess - summary_changes.new_cases: "#929292"
      Florida - summary_changes.new_cases: "#929292"
      District of Columbia - summary_changes.new_cases: "#929292"
      Georgia - summary_changes.new_cases: "#929292"
      Guam - summary_changes.new_cases: "#929292"
      Grand Princess - summary_changes.new_cases: "#929292"
      Hawaii - summary_changes.new_cases: "#929292"
      Idaho - summary_changes.new_cases: "#929292"
      Illinois - summary_changes.new_cases: "#929292"
      Indiana - summary_changes.new_cases: "#929292"
      Iowa - summary_changes.new_cases: "#929292"
      Kansas - summary_changes.new_cases: "#929292"
      Kentucky - summary_changes.new_cases: "#929292"
      Louisiana - summary_changes.new_cases: "#929292"
      Maine - summary_changes.new_cases: "#929292"
      Maryland - summary_changes.new_cases: "#929292"
      Massachusetts - summary_changes.new_cases: "#ed6168"
      Michigan - summary_changes.new_cases: "#929292"
      Minnesota - summary_changes.new_cases: "#929292"
      Mississippi - summary_changes.new_cases: "#929292"
      Missouri - summary_changes.new_cases: "#929292"
      Montana - summary_changes.new_cases: "#929292"
      Nebraska - summary_changes.new_cases: "#929292"
      Nevada - summary_changes.new_cases: "#929292"
      New Hampshire - summary_changes.new_cases: "#929292"
      New Jersey - summary_changes.new_cases: "#929292"
      New Mexico - summary_changes.new_cases: "#929292"
      New York - summary_changes.new_cases: "#929292"
      North Carolina - summary_changes.new_cases: "#929292"
      Northern Mariana Islands - summary_changes.new_cases: "#929292"
      Ohio - summary_changes.new_cases: "#929292"
      Oklahoma - summary_changes.new_cases: "#929292"
      Oregon - summary_changes.new_cases: "#929292"
      Pennsylvania - summary_changes.new_cases: "#929292"
      Recovered - summary_changes.new_cases: "#929292"
      Puerto Rico - summary_changes.new_cases: "#929292"
      Rhode Island - summary_changes.new_cases: "#929292"
      South Carolina - summary_changes.new_cases: "#929292"
      South Dakota - summary_changes.new_cases: "#929292"
      Tennessee - summary_changes.new_cases: "#929292"
      China - summary_changes.total_confirmed_to_date: "#929292"
      France - summary_changes.total_confirmed_to_date: "#929292"
      Italy - summary_changes.total_confirmed_to_date: "#929292"
      Spain - summary_changes.total_confirmed_to_date: "#929292"
      US - summary_changes.total_confirmed_to_date: "#ed6168"
      Connecticut - summary_changes.total_confirmed_to_date: "#929292"
      Maine - summary_changes.total_confirmed_to_date: "#929292"
      Massachusetts - summary_changes.total_confirmed_to_date: "#ed6168"
      New York - summary_changes.total_confirmed_to_date: "#929292"
      New Hampshire - summary_changes.total_confirmed_to_date: "#929292"
      Rhode Island - summary_changes.total_confirmed_to_date: "#929292"
      Vermont - summary_changes.total_confirmed_to_date: "#929292"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    listen: {}
    row: 12
    col: 0
    width: 14
    height: 9
  - title: Increase in death from day before
    name: Increase in death from day before
    model: covid
    explore: summary_changes
    type: single_value
    fields: [summary_changes.new_deaths_perc, summary_changes.date_date]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.province_state: Massachusetts
    sorts: [summary_changes.date_date desc]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [summary_changes.date_date]
    listen: {}
    row: 12
    col: 14
    width: 10
    height: 4
  - title: Increase in new cases from day before
    name: Increase in new cases from day before
    model: covid
    explore: summary_changes
    type: single_value
    fields: [summary_changes.new_cases_perc, summary_changes.date_date]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.province_state: Massachusetts
      summary_changes.country_region: US
    sorts: [summary_changes.date_date desc]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [summary_changes.date_date]
    listen: {}
    row: 16
    col: 14
    width: 10
    height: 5
  - title: Untitled
    name: Untitled
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.death_rate, summary_changes.date_date]
    fill_fields: [summary_changes.date_date]
    sorts: [summary_changes.date_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    row: 33
    col: 8
    width: 8
    height: 6
