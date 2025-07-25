-- 7. Creating a Stored Procedure for Product Reviews
DELIMITER //

CREATE PROCEDURE AddProductReview(
IN p_product_id INT,
IN p_user_id INT,
IN P_rating INT,
IN p_review TEXT
)
BEGIN 
	INSERT INTO reviews( product_id, user_id, rating, review_text)values(p_product_id, p_user_id ,P_rating ,p_review);


END //

call AddProductReview(5,5,5, 'good product');