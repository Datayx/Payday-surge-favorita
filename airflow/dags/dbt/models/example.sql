select
  current_date as run_date,
  count(*) as rows_in_source,
  sum(try_cast(amount as double)) as amount_sum
from read_csv_auto('/opt/airflow/dags/dbt/input/source.csv')
