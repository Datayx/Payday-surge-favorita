select
  date_trunc('day', run_date) as day,
  coalesce(rows_in_source, 0) as rows_in_source,
  coalesce(amount_sum, 0) as amount_sum
from {{ ref('example') }}
