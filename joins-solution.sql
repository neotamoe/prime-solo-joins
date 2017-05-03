--TASKS
--1. Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;

--2. Get all orders and their line items.
SELECT * FROM orders JOIN line_items ON orders.id = line_items.order_id;

--3. Which warehouses have cheetos?
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id WHERE description = 'cheetos';

--4. Which warehouses have diet pepsi?
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id WHERE description = 'diet pepsi';

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * FROM orders
JOIN addresses ON orders.address_id = addresses.id
JOIN customers ON addresses.customer_id = customers.id;

--6. How many customers do we have?
SELECT * FROM customers;

--7. How many products do we carry?
SELECT * FROM products;

--8. What is the total available on-hand quantity of diet pepsi?
SELECT * FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
WHERE description = 'diet pepsi';
