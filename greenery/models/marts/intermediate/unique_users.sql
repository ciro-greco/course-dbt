{{
  config(
    materialized='table'
  )
}}

SELECT DISTINCT
    user_id
    
FROM {{ source('users', 'users') }}