use programs;
DELIMITER //
drop procedure if exists largestofthree//
CREATE PROCEDURE largestofthree()
BEGIN
DECLARE a,b,c INT;
SET a=10;
SET b=20;
SET c=30;
if(a>=b) then
if(a>=c) then 
select concat(a,' is largest nymber');
end if;
else
if(b>=c) then
select concat(b,' is the largest');
Else
select concat(c,' is the largest');
end if;
end if;
END//
DELIMITER ;
call largestofthree();