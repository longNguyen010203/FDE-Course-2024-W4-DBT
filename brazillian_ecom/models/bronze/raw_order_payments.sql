SELECT *
FROM {{ source("ecommerce", "olist_order_payments_dataset") }}