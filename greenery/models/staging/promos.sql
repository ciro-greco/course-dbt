SELECT
    promo_id, 
    discount,
    status
    
FROM {{ source('promos', 'promos') }}