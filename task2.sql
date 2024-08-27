#1. create database:
create database task2;

#2. use the database:
use task2;

#3. create the table:
create table task2_info(
id int PRIMARY KEY auto_increment,
fname varchar(20),
place varchar(20),
doj date,
pnumber varchar(20)
);

#4.insert the values in table:
INSERT INTO task2_info(fname, place, doj, pnumber)
VALUES
('ravi', null,'1998-02-13',123456),
('rahul', 'hyd',null,789456),
('raj', 'hyd','1997-12-23',null),
(null, 'hyd','1998-02-13',123456),
('rahul', 'hyd','1978-02-03',789456),
('raj', 'hyd','1997-12-23',987456);


select * from task2_info;

#5. operations:
select * from task2_info where place is null;
update task2_info set place='knr' where id=1;
select * from task2_info;



select * from task2_info where doj is null;
update task2_info set doj='1990-01-01' where id=2;
select * from task2_info;

select * from task2_info where pnumber is null;
update  task2_info set pnumber='00000' where id=3;
select * from task2_info;

select * from task2_info where fname is null;
update task2_info set fname='johndoe' where id=4;
select * from task2_info;

#adding the new rows to table:
alter table task2_info add salary int;
alter table task2_info add lname varchar(20);

#adding values in new rows:
insert into task2_info (salary, lname)
values
(10000, 'abc'),
(20000, 'edf'),
(30000, 'ghi'),
(40000, 'jkl'),
(50000, 'mno'),
(60000, 'pqr');

select * from task2_info;
#updating the values in the newly added rows:
update task2_info set salary=10000, lname='abc' where id=1;
update task2_info set salary=20000 , lname='edf' where id=2;
update task2_info set salary=30000, lname='ghi' where id=3;
update task2_info set salary=40000, lname='jkl' where id=4;
update task2_info set salary=50000 , lname='mno' where id=5;
update task2_info set salary= 60000, lname='pqr' where id=6;

#delete rows 
delete from task2_info where id=7;
delete from task2_info where id=8;
delete from task2_info where id=9;
delete from task2_info where id=10;
delete from task2_info where id=11;
delete from task2_info where id=12;

select * from task2_info;







