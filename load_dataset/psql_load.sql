COPY olist_order_items_dataset
FROM '/tmp/brazilian-ecommerce/olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY olist_order_payments_dataset
FROM '/tmp/brazilian-ecommerce/olist_order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY olist_orders_dataset
FROM '/tmp/brazilian-ecommerce/olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY olist_products_dataset
FROM '/tmp/brazilian-ecommerce/olist_products_dataset.csv'
DELIMITER ','
CSV HEADER;