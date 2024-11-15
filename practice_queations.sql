#create a database for your company name XYZ
#create table inside this DB to store employee info(id,name and salary).
#add the following information in the DB:
# 1,"adam",25000
# 2,"bob",30000
# 3,"casey",40000
# select and view all your table 

create database if not exists xyz_company;
create table employee(id int,name varchar(50),salary int);
insert into employee(id,name,salary)values(1,"adam",25000),(2,"bob",30000),(3,"casey",40000);
select * from employee;





