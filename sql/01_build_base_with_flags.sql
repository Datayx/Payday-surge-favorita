WITH base AS (
  SELECT
      CAST(t.date AS DATE)            AS date,         
      t.store_nbr,
      t.item_nbr,
      COALESCE(t.unit_sales, 0)       AS sales
  FROM read_parquet('data/processed/train_clean_parquet/**/*.parquet') AS t
)
SELECT
    date,
    store_nbr,
    item_nbr,
    sales,
    
    (
      EXTRACT(day FROM date) = 15
      OR date = date_trunc('month', date) + INTERVAL 1 month - INTERVAL 1 day
    )::INT AS payday_flag
FROM base;
