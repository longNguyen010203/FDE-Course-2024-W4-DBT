SELECT *
FROM {{ source("ecommerce", "olist_orders_dataset") }}
