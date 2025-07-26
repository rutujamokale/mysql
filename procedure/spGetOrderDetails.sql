-- 5. Creating a Stored Procedure for Retrieving Order Details
DELIMITER //
CREATE PROCEDURE GetOrderDetails(
	IN p_order_id INT
)
BEGIN  
SELECT o.id AS order_id,o.order_date,o.shipping_address ,o.total_amount,
oi.item_id,oi.quantity,p.name AS product_name ,p.price
from orders o
JOIN order_items oi ON o.id=oi.order_id
join products p ON oi.item_id=p.id
where o.id=p_order_id;
END //

CALL GetOrderDetails(3);