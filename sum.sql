create database programs;
use programs;
DELIMITER //
CREATE PROCEDURE addnum()
BEGIN
DECLARE a INT;
DECLARE b INT;
DECLARE C INT;
SET a=10;
SET b=20;
SET c=a+b;
SELECT CONCAT('Sum=',c);
END//
DELIMITER ;
call addnum();
