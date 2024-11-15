create database if not exists hotel_manage;
use hotel_manage; 
create table employee(id int primary key,name varchar(50),address varchar(100),
mobile_number int,age int not null);
select * from employee;
insert into employee(id,name,address,mobile_number,age)values(102,"gsm","bangalore",9993567,20),
(103,"mmg","mumbai",888234,25),(104,"aish","karanatak",345234,18);

select * from employee where age>=20 and address="bangalore";
select * from employee where id=102;
select * from employee where age <=20 and address="bangalore";
select * from employee where age between 20 and 25;
select * from employee limit 3;
select * from employee limit 4;
select * from employee limit 2;

select * from employee  order by name asc;
select * from employee order by name desc;
select avg(age) from employee;
select avg(mobile_number) from employee;
select count(name) from employee;
select address,count(name)
from employee
group by address;

select address,count(name)
from employee
group by address;

select address
from employee
where age>=18
group by address
having max(age)>=25;

select * from employee;

update employee
set age=25
where id=104;




