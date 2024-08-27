#create database
create database office;

# use database 
use office;

# create tables in database
create table office_info(
id int,
fname varchar(20),
dob date,
place varchar(20)
);

#show the tables 
show tables;

#insert the values into the table
insert into office_info(id,fname,dob,place)
values
(1,'ravi','1998-02-19','hyd'),
(2,'rai','1998-03-19','xyz'),
(3,'mac','1998-02-01','abc'),
(4,'dell','1998-05-19','efg'),
(5,'hp','1990-01-02','dab');

#show the data inserted into tables
select * from office_info;


#create the second database
create database second;

use second;

create table second_info(
id int,
fname varchar(20),
lname varchar(20),
place varchar(20));

insert into second_info(id,fname, lname, place)
values
(1,'ravi','kumar','hyd'),
(1,'ravi','kumar','hyd'),
(1,'ravi','kumar','hyd'),
(1,'ravi','kumar','hyd'),
(1,'ravi','kumar','hyd');

select * from second_info;

#create the third database
create database third;

use third;

create table third_info(
id int,
fname varchar(20),
place varchar(20),
price decimal (10,2)
);

show tables;

insert into third_info(id, fname, place, price)
values
(1,'ravi', 'hyd', 10.03),
(1,'ravi', 'hyd', 10.03),
(1,'ravi', 'hyd', 10.03),
(1,'ravi', 'hyd', 10.03),
(1,'ravi', 'hyd', 10.03),
(1,'ravi', 'hyd', 10.03);

select * from third_info;

