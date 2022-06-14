{{
  config(
    materialized='view'
  )
}}

SELECT Count(*) as total_users
FROM {{ref('unique_users')}}