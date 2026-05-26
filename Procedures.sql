DELIMITER //
CREATE PROCEDURE update_delivery_status
(
     IN orderid INT,
     IN new_status VARCHAR(30)
)
BEGIN
    UPDATE Delivery 
    SET delivery_status = new_status
    WHERE order_id =orderid;
END //

DELIMITER ;    
