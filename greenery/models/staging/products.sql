SELECT
    product_id, 
    name,
    price,
    inventory
    
FROM {{ source('products', 'products') }}