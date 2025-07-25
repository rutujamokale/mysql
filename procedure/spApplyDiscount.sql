 -- Creating a Stored Procedure for Applying a Discount Code
 desc orders;
 desc discount_codes;
 drop procedure ApplyDiscount;
 DELIMITER //
 
 CREATE PROCEDURE ApplyDiscount(
 
 IN p_order_id INT,
 IN p_discount_code VARCHAR(50)
 )
 BEGIN
	DECLARE V_discount decimal(5,2);
    DECLARE V_total decimal(10,2);
    
    select discount_percentage INTO v_discount
    from discount_codes
    where code= p_discount_code AND NOW() BETWEEN start_date AND  end_date ;
    
    IF v_discount IS NOT NULL THEN
    
    select total_amount INTO v_total
    from orders
    where id =p_order_id ;
    
    set v_total =v_total - (v_total * (v_discount /100));
    
    update orders
    set total_amount = v_total
    where id= p_order_id;
    
    ELSE 
    SIGNAL  SQLSTATE '45000' SET MESSAGE_TEXT = 'INVALID OR EXPIRED DISCOUNT CODE';
     
    END IF ;

 END //
 
 select *from discount_codes where code = 'INDEPENDENCE22 ';
 call ApplyDiscount(4, 'INDEPENDENCE22');
 