DELIMITER //
CREATE TRIGGER update_final_amount
BEFORE INSERT ON Orders
FOR EACH ROW
BEGIN
    SET NEW.total_amount = NEW.total_amount + (NEW.total_amount + 0.05);
END //
DELIMITER ;    
