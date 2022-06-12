{{
  config(
    materialized='view'
  )
}}


SELECT COUNT(o.user_id) as number_of_users, o.number_of_orders
FROM {{ ref('purchase_per_user') }} as o
GROUP BY o.number_of_orders
HAVING  o.number_of_orders = 5