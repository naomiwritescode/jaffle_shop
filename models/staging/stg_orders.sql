WITH raw_orders AS (
  SELECT
    ID AS ORDER_ID,
    USER_ID AS CUSTOMER_ID,
    ORDER_DATE,
    STATUS
  FROM {{ ref('raw_orders') }}
), stg_orders AS (
  SELECT
    *
  FROM raw_orders
)
SELECT
  *
FROM stg_orders