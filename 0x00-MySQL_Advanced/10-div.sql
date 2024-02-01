-- Create a function SafeDiv
-- that divides (and returns) the first number by the second,
-- or returns 0 if the second number is equal to 0.
DELIMITER //
DROP function IF EXISTS SafeDiv;
CREATE function SafeDiv (a INT, b INT) RETURNS FLOAT DETERMINISTIC
BEGIN
    return (IF (b = 0, 0, a / b));
END;
// DELIMITER
