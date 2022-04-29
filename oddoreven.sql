use programs;
DELIMITER //
drop procedure if exists oddoreven//
CREATE PROCEDURE oddoreven(in n int)
BEGIN
DECLARE num INT;
if mod(n,2)=0 then
select concat(n,' is even number');
else
select concat(n,' is odd number');
end if;
END//
DELIMITER ;
call oddoreven(19);
