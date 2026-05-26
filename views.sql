CREATE VIEW customer_order_summary AS 
SELECT Customers.Customer_name,
       Restaurants.restaurant_name,
       Orders.total_amount,
       Delivery.delivery_status
FROM Orders
INNER JOIN Customers
ON Orders.customer_id = Customers.Customer_id 
INNER JOIN Restaurants
ON Orders.restaurant_id = Restaurants.restaurant_id
INNER JOIN Delivery
ON Orders.order_id = Delivery.order_id;

SELECT * FROM customer_order_summary;
