DELIMITER // 
 CREATE PROCEDURE UpdateUInfo(
 IN P_New_username VARCHAR(255),
 IN p_Old_username VARCHAR(255),
 IN p_email VARCHAR(255),
 IN P_address VARCHAR(255)
 
 ) 
 BEGIN
update users
set username=p_New_username, address=p_address
where username= p_Old_username;
 
 
 
 END //
 call UpdateUInfo('rutuja','rutu_mokale','rutumokale@gmail.com','pune');