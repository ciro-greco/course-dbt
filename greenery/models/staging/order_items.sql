SELECT
    order_id, 
    product_id,
    quantity
FROM {{ source('order_items', 'order_items') }}