{{
  config(
    materialized='table'
  )
}}

SELECT u.user_id, CONCAT(u.first_name, ' ', u.last_name) as user_name, COUNT(o.order_id) as number_of_orders
FROM {{ ref('users') }} as u
LEFT JOIN {{ ref('orders') }} as o
ON u.user_id=o.user_id
GROUP BY u.user_id, user_name