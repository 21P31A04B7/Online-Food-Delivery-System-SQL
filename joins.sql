SELECT Customers.Customer_name, 
	   Restaurants.restaurant_name,
       Orders.total_amount,
       Orders.order_status
FROM Orders 
INNER JOIN Customers ON Orders.customer_id = Customers.Customer_id
INNER JOIN Restaurants ON Orders.restaurant_id = Restaurants.restaurant_id;

SELECT Customers.Customer_name,
       Orders.order_id,
       Orders.total_amount
FROM Customers
LEFT JOIN Orders ON Customers.Customer_id =Orders.customer_id;       

SELECT Restaurants.restaurant_name,
	   SUM(Orders.total_amount) AS total_revenue 
FROM Orders INNER JOIN Restaurants ON Orders.restaurant_id = Restaurants.restaurant_id GROUP BY Restaurants.restaurant_name;
