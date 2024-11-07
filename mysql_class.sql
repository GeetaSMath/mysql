create database temp1;
drop database temp1;
create database college;
use college;
create table students(
	id int primary key,
    name varchar(50),
    age int not null
);

insert into students values(1,"geeta",20);
insert into students values(2,"geeta",20);
insert into students values(3,"geeta",20);
select * from students;

show databases;
show tables;

create database if not exists student;
drop table if exists students;

use college;
create table students(roll_number int not null,name varchar(50));
insert into students(roll_number,name)values(101,"geeta");
insert into students(roll_number,name)values(102,"aish");
select * from students;

#DEFAULT KEY CONSTRAINTS

create table emp2(id int ,salary int default 25000);
insert into emp2(id)values(101);
select * from emp2;

#EXAMPLES
#CREATE SAMPLE TABLE 
#INSERT DATA
 
 create database if not exists colleges;
 use colleges;
 create table if not exists student(rollno int primary key,name varchar(50)
 ,marks int not null,grade varchar(1),city  varchar(50));
 show tables;
 
 insert into student(rollno,name,marks,grade,city)values
 (101,"anil",78,"C","pune"),
 (102,"bhumika",93,"A","mumbai"),
 (103,"chetan",85,"B","mumbai"),
 (104,"dhruva",96,"A","Delhi"),
 (105,"emanuel",12,"F","Delhi"),
 (106,"farha", 82,"B","Delhi");
 
 #SELECT ONLY NAME AND MARKS 
 
 select name,marks from student;
 select * from student;
 select distinct city from student;
 
 select * from student where marks >80;
 
 select * from student where city ="mumbai";
 
 select * from student where marks>80 and city="mumbai";
 
 #WHERE CLAUSE 
 #AND (WHEN BOTH CONDITION TRUE)
 #OR OPERATOR WHEN ONE OF THE CONDITION TRUE
 select * from student where marks>90 and city="mumbai";
 
 select * from student where marks>90 or city ="mumbai";
 
 #BETWEEN (SELECT GIVEN RANGE)
 #IN (MATCHES ANY VALUE IN THE LIST)
 #NOT (TO NEGATE THE GIVEN CONDITION)
 #LIMIT (TO DISPLAY ROW WE WANT)
 #ORDER BY CLAUSE-SET DATA IN ASCENDING AND DESCENDING ORDER
 
select * from student where marks between 80 and 90;

select * from student where city in ("delhi","mumbai");

select * from student where city not in("delhi","mumbai");

select * from student limit 3;

select * from student where marks >75 limit 3;

select * from student order by city ASC;

select * from student  order by city,marks ASC;

select * from student where marks >70 and city="mumbai" order by marks ASC;

select * from student order by marks ASC limit 3;

select * from student order by marks DESC limit 3;

#AGGREGATE FUNCTION
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;

#GROUP BY CLAUSE

select city,name,count(rollno) from student group by city,name;

select city, count(rollno)from student group by city;
select city,avg(marks) from student  group by city order by avg(marks);

# HAVING CLAUSE 
# COUNT NUMBER OF STUDENTS IN EACH CITY WHERE MAX MARKS CROSS 90
 select count(name),city from student group by city having  max(marks)>90;
 
 select city,count(rollno)
 from student group by city
 having max(marks)>90;



 