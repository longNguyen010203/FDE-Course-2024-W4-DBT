SELECT
rp.product_id
, pcnt.product_category_name_english
FROM {{ref("raw_products")}} rp
JOIN {{ref("product_category_name_translation")}} pcnt
ON rp.product_category_name = pcnt.product_category_name
