use programs;
DELIMITER //
drop procedure if exists factorial//
CREATE PROCEDURE factorial(in n int)
BEGIN
DECLARE num,fact INT;
SET num=n;
SET fact=1;
while(num>0)do
set fact=num*fact;
set num=num-1;
end while;
select concat('fact=',fact);
END//
DELIMITER ;
call factorial(6);
