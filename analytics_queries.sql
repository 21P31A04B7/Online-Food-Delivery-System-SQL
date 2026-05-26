SELECT restaurant_id,
       SUM(total_amount) AS net_revenue FROM Orders WHERE order_status = 'Delivered' GROUP BY restaurant_id ;
       
SELECT AVG(delivery_time) AS average_delivery_time FROM Delivery WHERE delivery_status = 'Delivered';
SELECT COUNT(*) AS total_delivered_orders FROM Orders WHERE order_status = 'Delivered' ;
SELECT Customer_id, SUM(total_amount) AS total_spending FROM Orders GROUP BY Customer_id;
