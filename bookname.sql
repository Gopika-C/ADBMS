create database library;
use library;
create table Bookdetails(bookno int primary key,bookname varchar(30),bookauthor varchar(30));
create table issuedetails(issueid int primary key,bookno int,issuedate date,returnstatus char(5));
create table returndetails(returnid int primary key,issueid int,bookno int,returndate date);
insert into bookdetails(bookno,bookname,bookauthor)values(111,"Introduction to c","E.Balaguruswmi");
insert into bookdetails(bookno,bookname,bookauthor)values(123,"Java programming","Surbhi Kakar");
insert into bookdetails(bookno,bookname,bookauthor)values(122,"OOPS with c++","Sourav Sahay");
insert into bookdetails(bookno,bookname,bookauthor)values(134,"ADS","Alfred");
insert into bookdetails(bookno,bookname,bookauthor)values(124,"Operating system","D.m Dhamdheer");
DELIMITER //
drop procedure if exists orderofbooktitle//
CREATE PROCEDURE orderofbooktitle()
BEGIN
select * from bookdetails order by bookname asc;
END //
DELIMITER ;
call orderofbooktitle();


DELIMITER //
drop procedure if exists issuebook//
CREATE PROCEDURE issuebook()
BEGIN
insert into issuedetails values(6,4,curdate(),'no');
select * from issuedetails;
END //
DELIMITER ;
call issuebook();

DELIMITER //
drop procedure if exists bookreturn//
CREATE PROCEDURE bookreturn()
BEGIN
insert into returndetails values(3,4,4,curdate());
update issuedetails set returnstatus='yes' where issueid=7;
select * from issuedetails;
END //
DELIMITER ;
call bookreturn();
