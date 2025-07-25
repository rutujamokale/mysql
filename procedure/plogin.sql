-- 2. Creating a Stored Procedure for User Login
DELIMITER // 

CREATE PROCEDURE  UserLogin(
   IN p_username VARCHAR(50),
    IN p_password VARCHAR (255)

)
BEGIN

select id,username,email
from users
where username=p_username and password = p_password;


END //