use programs;
DELIMITER //
drop procedure if exists sumofmton//
CREATE PROCEDURE sumofmton(in n int,in m int)
BEGIN 
DECLARE i,final INT;
SET i=n;
select concat(n,m);
SEt final=0;
label:while(i<=m)do
set final=final+i;
set i=i+1;
end while label;
select concat('sum from ',n,' to ',m,' = ',final);
END //
DELIMITER ;
call sumofmton(5,10);