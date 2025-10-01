-- Payday lift by store and category 
WITH b AS (
  SELECT
      d.date,
      d.store_nbr,
      d.item_nbr,
      d.sales,
      COALESCE(d.payday_flag, CAST(d.is_payday AS INT)) AS payday_flag,
      i.family
  FROM read_parquet('data/processed/base_with_flags.parquet') AS d
  LEFT JOIN read_parquet('data/processed/items.parquet') AS i USING (item_nbr)
)
SELECT
  'store' AS level,
  CAST(store_nbr AS VARCHAR) AS entity,
  100 * (
    AVG(CASE WHEN payday_flag = 1 THEN sales END)
    / NULLIF(AVG(CASE WHEN payday_flag = 0 THEN sales END), 0) - 1
  ) AS lift_pct
FROM b
GROUP BY store_nbr

UNION ALL

SELECT
  'category' AS level,
  family AS entity,
  100 * (
    AVG(CASE WHEN payday_flag = 1 THEN sales END)
    / NULLIF(AVG(CASE WHEN payday_flag = 0 THEN sales END), 0) - 1
  ) AS lift_pct
FROM b
GROUP BY family
ORDER BY level, lift_pct DESC;
