-- 6. Creating a Stored Procedure for Low Stock Alerts
desc products;
drop procedure LowStockAlert;
DELIMITER //
CREATE PROCEDURE LowStockAlert(
IN p_threshold INT
)
BEGIN
	select id,name,stock
    from products
    where stock < P_threshold ;

END //	
call LowStockAlert(50);