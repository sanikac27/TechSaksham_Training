-- 1. Select all columns and calculate line_item_amount as unit_price * quantity
SELECT *, (unit_price * quantity) AS line_item_amount
FROM CUSTOMER_ORDERS.ORDER_ITEMS;

-- 2. Select all columns and calculate line_item_amount, rounding it to 1 decimal place
SELECT *, ROUND((unit_price * quantity), 1) AS line_item_amount
FROM CUSTOMER_ORDERS.ORDER_ITEMS;
