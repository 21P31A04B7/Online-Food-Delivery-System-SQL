SELECT Restaurants.restaurant_name,
	   SUM(Orders.total_amount) AS total_revenue 
FROM Orders INNER JOIN Restaurants ON Orders.restaurant_id = Restaurants.restaurant_id GROUP BY Restaurants.restaurant_name;

SELECT Restaurants.restaurant_name,
       SUM(Orders.total_amount) AS total_revenue
FROM Orders INNER JOIN Restaurants ON Orders.restaurant_id = Restaurants.restaurant_id GROUP BY Restaurants.restaurant_name HAVING SUM(Orders.total_amount) > 200;  

SELECT Customer_id,total_amount FROM Orders WHERE total_amount > (SELECT AVG(total_amount) FROM Orders);     
