SELECT 
    *
FROM 
    {{ source("ecommerce", "olist_order_items_dataset") }}
