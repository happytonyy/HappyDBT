-- models/tests/test_nulls_stg_orders.sql

SELECT *
FROM {{ ref('stg_orders') }}
WHERE order_id IS NULL
   OR customer IS NULL
   OR ordered_at IS NULL
   OR store_id IS NULL