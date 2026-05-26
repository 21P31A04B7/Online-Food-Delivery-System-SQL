WITH RestaurantRevenue AS (SELECT restaurant_id, SUM(total_amount) AS revenue FROM Orders GROUP BY restaurant_id) SELECT * FROM RestaurantRevenue;

SELECT restaurant_id, SUM(total_amount) AS total_revenue, RANK() OVER(ORDER BY SUM(total_amount) DESC) AS revenue_rank FROM Orders GROUP BY restaurant_id;

SELECT order_id,
       order_status, 
       CASE
          WHEN order_status = 'Delivered' THEN 'Completed'
          WHEN order_status = 'Pending' THEN 'Waiting'
          ELSE 'Cancelled'
	   END AS status_category
FROM Orders;
