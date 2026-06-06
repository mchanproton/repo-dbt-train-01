
models:
  - name: metricflow_time_spine
    description: >
      Required by the dbt Semantic Layer. Provides a continuous 
      date series for MetricFlow time-based calculations.
    time_spine:
      standard_granularity_column: date_day
    columns:
      - name: date_day
        granularity: day
 