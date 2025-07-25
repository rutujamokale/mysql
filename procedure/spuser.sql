DELIMITER //
 create procedure UserRegistration(
 IN p_username VARCHAR(50),
 IN p_password VARCHAR(255),
 IN p_email VARCHAR(100),
 IN p_address VARCHAR(255)
 )
  BEGIN
  insert into users( username, password, email, address ) values(p_username,p_password,p_email,p_address);
  
  
  END //