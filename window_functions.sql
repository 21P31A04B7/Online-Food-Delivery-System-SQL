SELECT restaurant_id, SUM(total_amount) AS total_revenue, RANK() OVER(ORDER BY SUM(total_amount) DESC) AS revenue_rank FROM Orders GROUP BY restaurant_id;
