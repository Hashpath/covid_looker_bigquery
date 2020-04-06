- dashboard: covid__massachusetts
  title: COVID - MA
  layout: newspaper
  elements:
  - name: "<blank>"
    type: text
    title_text: "<blank>"
    row: 43
    col: 0
    width: 24
    height: 6
  - title: Summary
    name: Summary
    model: covid
    explore: snapshot
    type: single_value
    fields: [snapshot.text, snapshot.total_confirmed_to_date]
    sorts: [snapshot.total_confirmed_to_date desc]
    limit: 1
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [snapshot.total_confirmed_to_date]
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    row: 0
    col: 0
    width: 24
    height: 6
  - title: Totals by County
    name: Totals by County
    model: covid
    explore: summary_changes
    type: looker_grid
    fields: [summary_changes.country_or_subregion, summary_changes.new_cases, summary_changes.total_confirmed_to_date]
    filters:
      summary_changes.cleaned_state: Massachusetts
      summary_changes.country_or_subregion: "-NULL,-Unassigned"
      summary_changes.date_date: 2 days
    sorts: [summary_changes.new_cases desc]
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
    series_cell_visualizations:
      summary_changes.new_cases:
        is_active: true
        palette:
          palette_id: 421531ed-128d-1a5a-dd4e-711b826f7c9b
          collection_id: legacy
          custom_colors:
          - "#ffffff"
          - "#929292"
      summary_changes.total_confirmed_to_date:
        is_active: true
        palette:
          palette_id: '0835b0a5-3baa-1969-821d-d163e04ef0b3'
          collection_id: legacy
          custom_colors:
          - "#Ffffff"
          - "#D41A21"
        value_display: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 9
  - title: Confirmed Cases by County
    name: Confirmed Cases by County
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
    map_value_colors: ["#929292", "#D41A21"]
    defaults_version: 1
    listen: {}
    row: 6
    col: 12
    width: 12
    height: 9
  - title: Total Confirmed Cases by State
    name: Total Confirmed Cases by State
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.date_date, summary_changes.total_confirmed_to_date, summary_changes.cleaned_state]
    pivots: [summary_changes.cleaned_state]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.cleaned_state: "-everywhere else in the world"
      summary_changes.country_region: ''
      summary_changes.date_date: after 2020/03/01
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
            id: Alabama - summary_changes.total_confirmed_to_date, name: Alabama},
          {axisId: summary_changes.total_confirmed_to_date, id: Alaska - summary_changes.total_confirmed_to_date,
            name: Alaska}, {axisId: summary_changes.total_confirmed_to_date, id: Arizona
              - summary_changes.total_confirmed_to_date, name: Arizona}, {axisId: summary_changes.total_confirmed_to_date,
            id: Arkansas - summary_changes.total_confirmed_to_date, name: Arkansas},
          {axisId: summary_changes.total_confirmed_to_date, id: California - summary_changes.total_confirmed_to_date,
            name: California}, {axisId: summary_changes.total_confirmed_to_date, id: Colorado
              - summary_changes.total_confirmed_to_date, name: Colorado}, {axisId: summary_changes.total_confirmed_to_date,
            id: Connecticut - summary_changes.total_confirmed_to_date, name: Connecticut},
          {axisId: summary_changes.total_confirmed_to_date, id: Delaware - summary_changes.total_confirmed_to_date,
            name: Delaware}, {axisId: summary_changes.total_confirmed_to_date, id: Florida
              - summary_changes.total_confirmed_to_date, name: Florida}, {axisId: summary_changes.total_confirmed_to_date,
            id: Georgia - summary_changes.total_confirmed_to_date, name: Georgia},
          {axisId: summary_changes.total_confirmed_to_date, id: Hawaii - summary_changes.total_confirmed_to_date,
            name: Hawaii}, {axisId: summary_changes.total_confirmed_to_date, id: Idaho
              - summary_changes.total_confirmed_to_date, name: Idaho}, {axisId: summary_changes.total_confirmed_to_date,
            id: Illinois - summary_changes.total_confirmed_to_date, name: Illinois},
          {axisId: summary_changes.total_confirmed_to_date, id: Indiana - summary_changes.total_confirmed_to_date,
            name: Indiana}, {axisId: summary_changes.total_confirmed_to_date, id: Iowa
              - summary_changes.total_confirmed_to_date, name: Iowa}, {axisId: summary_changes.total_confirmed_to_date,
            id: Kansas - summary_changes.total_confirmed_to_date, name: Kansas}, {
            axisId: summary_changes.total_confirmed_to_date, id: Kentucky - summary_changes.total_confirmed_to_date,
            name: Kentucky}, {axisId: summary_changes.total_confirmed_to_date, id: Louisiana
              - summary_changes.total_confirmed_to_date, name: Louisiana}, {axisId: summary_changes.total_confirmed_to_date,
            id: Maine - summary_changes.total_confirmed_to_date, name: Maine}, {axisId: summary_changes.total_confirmed_to_date,
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
          {axisId: summary_changes.total_confirmed_to_date, id: Ohio - summary_changes.total_confirmed_to_date,
            name: Ohio}, {axisId: summary_changes.total_confirmed_to_date, id: Oklahoma
              - summary_changes.total_confirmed_to_date, name: Oklahoma}, {axisId: summary_changes.total_confirmed_to_date,
            id: Oregon - summary_changes.total_confirmed_to_date, name: Oregon}, {
            axisId: summary_changes.total_confirmed_to_date, id: Pennsylvania - summary_changes.total_confirmed_to_date,
            name: Pennsylvania}, {axisId: summary_changes.total_confirmed_to_date,
            id: Rhode Island - summary_changes.total_confirmed_to_date, name: Rhode
              Island}, {axisId: summary_changes.total_confirmed_to_date, id: South
              Carolina - summary_changes.total_confirmed_to_date, name: South Carolina},
          {axisId: summary_changes.total_confirmed_to_date, id: South Dakota - summary_changes.total_confirmed_to_date,
            name: South Dakota}, {axisId: summary_changes.total_confirmed_to_date,
            id: Tennessee - summary_changes.total_confirmed_to_date, name: Tennessee},
          {axisId: summary_changes.total_confirmed_to_date, id: Texas - summary_changes.total_confirmed_to_date,
            name: Texas}, {axisId: summary_changes.total_confirmed_to_date, id: Utah
              - summary_changes.total_confirmed_to_date, name: Utah}, {axisId: summary_changes.total_confirmed_to_date,
            id: Vermont - summary_changes.total_confirmed_to_date, name: Vermont},
          {axisId: summary_changes.total_confirmed_to_date, id: Virginia - summary_changes.total_confirmed_to_date,
            name: Virginia}, {axisId: summary_changes.total_confirmed_to_date, id: Washington
              - summary_changes.total_confirmed_to_date, name: Washington}, {axisId: summary_changes.total_confirmed_to_date,
            id: West Virginia - summary_changes.total_confirmed_to_date, name: West
              Virginia}, {axisId: summary_changes.total_confirmed_to_date, id: Wisconsin
              - summary_changes.total_confirmed_to_date, name: Wisconsin}, {axisId: summary_changes.total_confirmed_to_date,
            id: Wyoming - summary_changes.total_confirmed_to_date, name: Wyoming}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: log}]
    x_axis_label: Date
    size_by_field: ''
    hide_legend: true
    series_types:
      Massachusetts - summary_changes.total_confirmed_to_date: scatter
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
      Massachusetts - summary_changes.total_confirmed_to_date: "#ed083e"
      New York - summary_changes.total_confirmed_to_date: "#929292"
      New Hampshire - summary_changes.total_confirmed_to_date: "#929292"
      Rhode Island - summary_changes.total_confirmed_to_date: "#929292"
      Vermont - summary_changes.total_confirmed_to_date: "#929292"
      Arizona - summary_changes.total_confirmed_to_date: "#929292"
      Alabama - summary_changes.total_confirmed_to_date: "#929292"
      Alaska - summary_changes.total_confirmed_to_date: "#929292"
      Arkansas - summary_changes.total_confirmed_to_date: "#929292"
      California - summary_changes.total_confirmed_to_date: "#929292"
      Colorado - summary_changes.total_confirmed_to_date: "#929292"
      Delaware - summary_changes.total_confirmed_to_date: "#929292"
      Florida - summary_changes.total_confirmed_to_date: "#929292"
      Georgia - summary_changes.total_confirmed_to_date: "#929292"
      Hawaii - summary_changes.total_confirmed_to_date: "#929292"
      Idaho - summary_changes.total_confirmed_to_date: "#929292"
      Illinois - summary_changes.total_confirmed_to_date: "#929292"
      Indiana - summary_changes.total_confirmed_to_date: "#929292"
      Iowa - summary_changes.total_confirmed_to_date: "#929292"
      Kansas - summary_changes.total_confirmed_to_date: "#929292"
      Kentucky - summary_changes.total_confirmed_to_date: "#929292"
      Maryland - summary_changes.total_confirmed_to_date: "#929292"
      Louisiana - summary_changes.total_confirmed_to_date: "#929292"
      Michigan - summary_changes.total_confirmed_to_date: "#929292"
      Minnesota - summary_changes.total_confirmed_to_date: "#929292"
      Missouri - summary_changes.total_confirmed_to_date: "#929292"
      Montana - summary_changes.total_confirmed_to_date: "#929292"
      Nebraska - summary_changes.total_confirmed_to_date: "#929292"
      Nevada - summary_changes.total_confirmed_to_date: "#929292"
      New Jersey - summary_changes.total_confirmed_to_date: "#929292"
      New Mexico - summary_changes.total_confirmed_to_date: "#929292"
      North Carolina - summary_changes.total_confirmed_to_date: "#929292"
      North Dakota - summary_changes.total_confirmed_to_date: "#929292"
      Ohio - summary_changes.total_confirmed_to_date: "#929292"
      Oklahoma - summary_changes.total_confirmed_to_date: "#929292"
      Oregon - summary_changes.total_confirmed_to_date: "#929292"
      Pennsylvania - summary_changes.total_confirmed_to_date: "#929292"
      South Carolina - summary_changes.total_confirmed_to_date: "#929292"
      South Dakota - summary_changes.total_confirmed_to_date: "#929292"
      Tennessee - summary_changes.total_confirmed_to_date: "#929292"
      Texas - summary_changes.total_confirmed_to_date: "#929292"
      Utah - summary_changes.total_confirmed_to_date: "#929292"
      Virginia - summary_changes.total_confirmed_to_date: "#929292"
      Washington - summary_changes.total_confirmed_to_date: "#929292"
      West Virginia - summary_changes.total_confirmed_to_date: "#929292"
      Wisconsin - summary_changes.total_confirmed_to_date: "#929292"
      Wyoming - summary_changes.total_confirmed_to_date: "#929292"
      Mississippi - summary_changes.total_confirmed_to_date: "#929292"
    series_labels: {}
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    listen: {}
    row: 15
    col: 0
    width: 12
    height: 10
  - title: Total Deaths by State
    name: Total Deaths by State
    model: covid
    explore: summary_changes
    type: looker_line
    fields: [summary_changes.date_date, summary_changes.cleaned_state, summary_changes.total_deaths_to_date]
    pivots: [summary_changes.cleaned_state]
    fill_fields: [summary_changes.date_date]
    filters:
      summary_changes.cleaned_state: "-everywhere else in the world"
      summary_changes.country_region: ''
      summary_changes.date_date: after 2020/03/01
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
            id: Alabama - summary_changes.total_confirmed_to_date, name: Alabama},
          {axisId: summary_changes.total_confirmed_to_date, id: Alaska - summary_changes.total_confirmed_to_date,
            name: Alaska}, {axisId: summary_changes.total_confirmed_to_date, id: Arizona
              - summary_changes.total_confirmed_to_date, name: Arizona}, {axisId: summary_changes.total_confirmed_to_date,
            id: Arkansas - summary_changes.total_confirmed_to_date, name: Arkansas},
          {axisId: summary_changes.total_confirmed_to_date, id: California - summary_changes.total_confirmed_to_date,
            name: California}, {axisId: summary_changes.total_confirmed_to_date, id: Colorado
              - summary_changes.total_confirmed_to_date, name: Colorado}, {axisId: summary_changes.total_confirmed_to_date,
            id: Connecticut - summary_changes.total_confirmed_to_date, name: Connecticut},
          {axisId: summary_changes.total_confirmed_to_date, id: Delaware - summary_changes.total_confirmed_to_date,
            name: Delaware}, {axisId: summary_changes.total_confirmed_to_date, id: Florida
              - summary_changes.total_confirmed_to_date, name: Florida}, {axisId: summary_changes.total_confirmed_to_date,
            id: Georgia - summary_changes.total_confirmed_to_date, name: Georgia},
          {axisId: summary_changes.total_confirmed_to_date, id: Hawaii - summary_changes.total_confirmed_to_date,
            name: Hawaii}, {axisId: summary_changes.total_confirmed_to_date, id: Idaho
              - summary_changes.total_confirmed_to_date, name: Idaho}, {axisId: summary_changes.total_confirmed_to_date,
            id: Illinois - summary_changes.total_confirmed_to_date, name: Illinois},
          {axisId: summary_changes.total_confirmed_to_date, id: Indiana - summary_changes.total_confirmed_to_date,
            name: Indiana}, {axisId: summary_changes.total_confirmed_to_date, id: Iowa
              - summary_changes.total_confirmed_to_date, name: Iowa}, {axisId: summary_changes.total_confirmed_to_date,
            id: Kansas - summary_changes.total_confirmed_to_date, name: Kansas}, {
            axisId: summary_changes.total_confirmed_to_date, id: Kentucky - summary_changes.total_confirmed_to_date,
            name: Kentucky}, {axisId: summary_changes.total_confirmed_to_date, id: Louisiana
              - summary_changes.total_confirmed_to_date, name: Louisiana}, {axisId: summary_changes.total_confirmed_to_date,
            id: Maine - summary_changes.total_confirmed_to_date, name: Maine}, {axisId: summary_changes.total_confirmed_to_date,
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
          {axisId: summary_changes.total_confirmed_to_date, id: Ohio - summary_changes.total_confirmed_to_date,
            name: Ohio}, {axisId: summary_changes.total_confirmed_to_date, id: Oklahoma
              - summary_changes.total_confirmed_to_date, name: Oklahoma}, {axisId: summary_changes.total_confirmed_to_date,
            id: Oregon - summary_changes.total_confirmed_to_date, name: Oregon}, {
            axisId: summary_changes.total_confirmed_to_date, id: Pennsylvania - summary_changes.total_confirmed_to_date,
            name: Pennsylvania}, {axisId: summary_changes.total_confirmed_to_date,
            id: Rhode Island - summary_changes.total_confirmed_to_date, name: Rhode
              Island}, {axisId: summary_changes.total_confirmed_to_date, id: South
              Carolina - summary_changes.total_confirmed_to_date, name: South Carolina},
          {axisId: summary_changes.total_confirmed_to_date, id: South Dakota - summary_changes.total_confirmed_to_date,
            name: South Dakota}, {axisId: summary_changes.total_confirmed_to_date,
            id: Tennessee - summary_changes.total_confirmed_to_date, name: Tennessee},
          {axisId: summary_changes.total_confirmed_to_date, id: Texas - summary_changes.total_confirmed_to_date,
            name: Texas}, {axisId: summary_changes.total_confirmed_to_date, id: Utah
              - summary_changes.total_confirmed_to_date, name: Utah}, {axisId: summary_changes.total_confirmed_to_date,
            id: Vermont - summary_changes.total_confirmed_to_date, name: Vermont},
          {axisId: summary_changes.total_confirmed_to_date, id: Virginia - summary_changes.total_confirmed_to_date,
            name: Virginia}, {axisId: summary_changes.total_confirmed_to_date, id: Washington
              - summary_changes.total_confirmed_to_date, name: Washington}, {axisId: summary_changes.total_confirmed_to_date,
            id: West Virginia - summary_changes.total_confirmed_to_date, name: West
              Virginia}, {axisId: summary_changes.total_confirmed_to_date, id: Wisconsin
              - summary_changes.total_confirmed_to_date, name: Wisconsin}, {axisId: summary_changes.total_confirmed_to_date,
            id: Wyoming - summary_changes.total_confirmed_to_date, name: Wyoming}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: log}]
    x_axis_label: Date
    size_by_field: ''
    hide_legend: true
    series_types:
      Massachusetts - summary_changes.total_confirmed_to_date: scatter
      Massachusetts - summary_changes.total_deaths_to_date: scatter
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
      Massachusetts - summary_changes.total_confirmed_to_date: "#ed083e"
      New York - summary_changes.total_confirmed_to_date: "#929292"
      New Hampshire - summary_changes.total_confirmed_to_date: "#929292"
      Rhode Island - summary_changes.total_confirmed_to_date: "#929292"
      Vermont - summary_changes.total_confirmed_to_date: "#929292"
      Arizona - summary_changes.total_confirmed_to_date: "#929292"
      Alabama - summary_changes.total_confirmed_to_date: "#929292"
      Alaska - summary_changes.total_confirmed_to_date: "#929292"
      Arkansas - summary_changes.total_confirmed_to_date: "#929292"
      California - summary_changes.total_confirmed_to_date: "#929292"
      Colorado - summary_changes.total_confirmed_to_date: "#929292"
      Delaware - summary_changes.total_confirmed_to_date: "#929292"
      Florida - summary_changes.total_confirmed_to_date: "#929292"
      Georgia - summary_changes.total_confirmed_to_date: "#929292"
      Hawaii - summary_changes.total_confirmed_to_date: "#929292"
      Idaho - summary_changes.total_confirmed_to_date: "#929292"
      Illinois - summary_changes.total_confirmed_to_date: "#929292"
      Indiana - summary_changes.total_confirmed_to_date: "#929292"
      Iowa - summary_changes.total_confirmed_to_date: "#929292"
      Kansas - summary_changes.total_confirmed_to_date: "#929292"
      Kentucky - summary_changes.total_confirmed_to_date: "#929292"
      Maryland - summary_changes.total_confirmed_to_date: "#929292"
      Louisiana - summary_changes.total_confirmed_to_date: "#929292"
      Michigan - summary_changes.total_confirmed_to_date: "#929292"
      Minnesota - summary_changes.total_confirmed_to_date: "#929292"
      Missouri - summary_changes.total_confirmed_to_date: "#929292"
      Montana - summary_changes.total_confirmed_to_date: "#929292"
      Nebraska - summary_changes.total_confirmed_to_date: "#929292"
      Nevada - summary_changes.total_confirmed_to_date: "#929292"
      New Jersey - summary_changes.total_confirmed_to_date: "#929292"
      New Mexico - summary_changes.total_confirmed_to_date: "#929292"
      North Carolina - summary_changes.total_confirmed_to_date: "#929292"
      North Dakota - summary_changes.total_confirmed_to_date: "#929292"
      Ohio - summary_changes.total_confirmed_to_date: "#929292"
      Oklahoma - summary_changes.total_confirmed_to_date: "#929292"
      Oregon - summary_changes.total_confirmed_to_date: "#929292"
      Pennsylvania - summary_changes.total_confirmed_to_date: "#929292"
      South Carolina - summary_changes.total_confirmed_to_date: "#929292"
      South Dakota - summary_changes.total_confirmed_to_date: "#929292"
      Tennessee - summary_changes.total_confirmed_to_date: "#929292"
      Texas - summary_changes.total_confirmed_to_date: "#929292"
      Utah - summary_changes.total_confirmed_to_date: "#929292"
      Virginia - summary_changes.total_confirmed_to_date: "#929292"
      Washington - summary_changes.total_confirmed_to_date: "#929292"
      West Virginia - summary_changes.total_confirmed_to_date: "#929292"
      Wisconsin - summary_changes.total_confirmed_to_date: "#929292"
      Wyoming - summary_changes.total_confirmed_to_date: "#929292"
      Mississippi - summary_changes.total_confirmed_to_date: "#929292"
      Alabama - summary_changes.total_deaths_to_date: "#929292"
      Alaska - summary_changes.total_deaths_to_date: "#929292"
      Arkansas - summary_changes.total_deaths_to_date: "#929292"
      Colorado - summary_changes.total_deaths_to_date: "#929292"
      California - summary_changes.total_deaths_to_date: "#929292"
      Connecticut - summary_changes.total_deaths_to_date: "#929292"
      Delaware - summary_changes.total_deaths_to_date: "#929292"
      Florida - summary_changes.total_deaths_to_date: "#929292"
      Georgia - summary_changes.total_deaths_to_date: "#929292"
      Hawaii - summary_changes.total_deaths_to_date: "#929292"
      Idaho - summary_changes.total_deaths_to_date: "#929292"
      Illinois - summary_changes.total_deaths_to_date: "#929292"
      Indiana - summary_changes.total_deaths_to_date: "#929292"
      Iowa - summary_changes.total_deaths_to_date: "#929292"
      Kansas - summary_changes.total_deaths_to_date: "#929292"
      Kentucky - summary_changes.total_deaths_to_date: "#929292"
      Louisiana - summary_changes.total_deaths_to_date: "#929292"
      Maine - summary_changes.total_deaths_to_date: "#929292"
      Maryland - summary_changes.total_deaths_to_date: "#929292"
      Massachusetts - summary_changes.total_deaths_to_date: "#ed083e"
      Michigan - summary_changes.total_deaths_to_date: "#929292"
      Minnesota - summary_changes.total_deaths_to_date: "#929292"
      Mississippi - summary_changes.total_deaths_to_date: "#929292"
      Missouri - summary_changes.total_deaths_to_date: "#929292"
      Montana - summary_changes.total_deaths_to_date: "#929292"
      Nebraska - summary_changes.total_deaths_to_date: "#929292"
      Nevada - summary_changes.total_deaths_to_date: "#929292"
      New Hampshire - summary_changes.total_deaths_to_date: "#929292"
      New Jersey - summary_changes.total_deaths_to_date: "#929292"
      New Mexico - summary_changes.total_deaths_to_date: "#929292"
      New York - summary_changes.total_deaths_to_date: "#929292"
      North Carolina - summary_changes.total_deaths_to_date: "#929292"
      North Dakota - summary_changes.total_deaths_to_date: "#929292"
      Ohio - summary_changes.total_deaths_to_date: "#929292"
      Oklahoma - summary_changes.total_deaths_to_date: "#929292"
      Oregon - summary_changes.total_deaths_to_date: "#929292"
      Pennsylvania - summary_changes.total_deaths_to_date: "#929292"
      South Carolina - summary_changes.total_deaths_to_date: "#929292"
      South Dakota - summary_changes.total_deaths_to_date: "#929292"
      Texas - summary_changes.total_deaths_to_date: "#929292"
      Tennessee - summary_changes.total_deaths_to_date: "#929292"
      Utah - summary_changes.total_deaths_to_date: "#929292"
      Vermont - summary_changes.total_deaths_to_date: "#929292"
      Washington - summary_changes.total_deaths_to_date: "#929292"
      Virginia - summary_changes.total_deaths_to_date: "#929292"
      West Virginia - summary_changes.total_deaths_to_date: "#929292"
      Wisconsin - summary_changes.total_deaths_to_date: "#929292"
      Wyoming - summary_changes.total_deaths_to_date: "#929292"
    series_labels: {}
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    listen: {}
    row: 15
    col: 12
    width: 12
    height: 10
  - title: Percentage of Population with Confirmed Case
    name: Percentage of Population with Confirmed Case
    model: covid
    explore: most_recent
    type: looker_geo_choropleth
    fields: [most_recent.state, most_recent.total_confirmed_to_date, state_population.total_population,
      most_recent.total_deaths_to_date]
    filters:
      most_recent.state: "-everywhere else in the world"
    sorts: [calculation_1 desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "(${most_recent.total_confirmed_to_date}*1.0/${state_population.total_population}*1.0)",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    map: usa
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    colors: ["#929292", "#D41A21"]
    color_range: ["#7f7f7f", "#D41A21"]
    font_color: [black]
    bubble_opacity: ['0.7']
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: Cases, orientation: bottom, series: [{axisId: cases, id: cases,
            name: Cases}, {axisId: cases_2, id: cases_2, name: Cases}], showLabels: true,
        showValues: true, valueFormat: "##0.00%", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    font_size: 12
    series_types: {}
    point_style: none
    series_colors:
      cases: "#D41A21"
      cases_2: "#929292"
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [most_recent.total_confirmed_to_date, state_population.total_population,
      most_recent.total_deaths_to_date, calculation_4, calculation_5, calculation_2]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_points_if_no: []
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
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen: {}
    row: 34
    col: 0
    width: 12
    height: 9
  - title: Deaths per 100k by State
    name: Deaths per 100k by State
    model: covid
    explore: most_recent
    type: looker_bar
    fields: [most_recent.total_confirmed_to_date, most_recent.state, state_population.total_population,
      most_recent.total_deaths_to_date]
    filters:
      most_recent.state: "-everywhere else in the world"
    sorts: [calculation_4 desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "(${most_recent.total_confirmed_to_date}*1.0/${state_population.total_population}*1.0)*100000",
        value_format: !!null '', value_format_name: decimal_3, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cases, label: Cases, expression: 'if(${most_recent.state}="Massachusetts",${calculation_4},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: cases_2, label: Cases, expression: 'if(${most_recent.state}="Massachusetts",null,${calculation_4})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_4, label: Calculation
          4, expression: "(${most_recent.total_deaths_to_date}*1.0/${state_population.total_population}*1.0)*100000",
        value_format: !!null '', value_format_name: decimal_3, _kind_hint: measure,
        _type_hint: number}, {table_calculation: calculation_5, label: Calculation
          5, expression: "${calculation_4}/${calculation_1}", value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Cases, orientation: bottom, series: [{axisId: cases, id: cases,
            name: Cases}, {axisId: cases_2, id: cases_2, name: Cases}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    hide_legend: true
    series_types: {}
    series_colors:
      cases: "#D41A21"
      cases_2: "#929292"
    hidden_fields: [most_recent.total_confirmed_to_date, state_population.total_population,
      calculation_1, most_recent.total_deaths_to_date, calculation_4, calculation_5]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 25
    col: 12
    width: 12
    height: 9
  - title: Cases per 100k by State
    name: Cases per 100k by State
    model: covid
    explore: most_recent
    type: looker_bar
    fields: [most_recent.total_confirmed_to_date, most_recent.state, state_population.total_population]
    filters:
      most_recent.state: "-everywhere else in the world"
    sorts: [calculation_1 desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "(${most_recent.total_confirmed_to_date}*1.0/${state_population.total_population}*1.0)*100000",
        value_format: !!null '', value_format_name: decimal_3, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cases, label: Cases, expression: 'if(${most_recent.state}="Massachusetts",${calculation_1},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: cases_2, label: Cases, expression: 'if(${most_recent.state}="Massachusetts",null,${calculation_1})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Cases, orientation: bottom, series: [{axisId: cases, id: cases,
            name: Cases}, {axisId: cases_2, id: cases_2, name: Cases}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    hide_legend: true
    series_types: {}
    series_colors:
      cases: "#D41A21"
      cases_2: "#929292"
    hidden_fields: [most_recent.total_confirmed_to_date, state_population.total_population,
      calculation_1]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 25
    col: 0
    width: 12
    height: 9
  - title: Death Rate by State
    name: Death Rate by State
    model: covid
    explore: summary
    type: looker_bar
    fields: [summary.cleaned_state, summary.death_rate]
    filters:
      last_report_date.last_report_date: NOT NULL
      summary.cleaned_state: "-everywhere else in the world"
    sorts: [summary.death_rate desc]
    limit: 500
    dynamic_fields: [{table_calculation: death_rate, label: Death Rate, expression: 'if(${summary.cleaned_state}="Massachusetts",${summary.death_rate},null)',
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: death_rate_2, label: Death Rate,
        expression: 'if(${summary.cleaned_state}="Massachusetts",null,${summary.death_rate})',
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Death Rate, orientation: bottom, series: [{axisId: death_rate,
            id: death_rate, name: Death Rate}, {axisId: death_rate_2, id: death_rate_2,
            name: Death Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_label: State
    size_by_field: death_rate
    hide_legend: true
    series_types: {}
    series_colors:
      death_rate_2: "#929292"
      death_rate: "#d41a22"
    show_null_points: true
    defaults_version: 1
    hidden_fields: [summary.death_rate]
    listen: {}
    row: 34
    col: 12
    width: 12
    height: 9
