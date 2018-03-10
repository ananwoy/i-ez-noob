// Creating Database

create database caps_asset;

//Creating the User_Master table and inserting data.
create table user_master(userid integer(5),username varchar(20),userpassword varchar(20),usertype varchar(20));
insert into user_master values(1,'ananwoy','123','admin');
insert into user_master values(2,'prince','456','manager');
insert into user_master values(3,'tejashree','456','manager');
insert into user_master values(4,'shiyon','456','manager');
insert into user_master values(5,'ashna','456','manager');
insert into user_master values(6,'abhishek','456','manager');


create table asset(assetid integer(6) primary key,assetname varchar(20),assetdes varchar(50),quantity varchar(20),status varchar(20));
insert into asset values( 100, 'Laptop', 'Lenovo', 20, 'Available');
insert into asset values( 101, 'Laptop', 'HP', 40, 'Available');
insert into asset values( 102, 'Laptop', 'Dell', 50, 'Available');
insert into asset values( 103, 'Laptop', 'Acer', 5, 'Available');
insert into asset values( 104, 'Mobile', 'Samsung', 30, 'Available');
insert into asset values( 105, 'Mobile', 'Lenovo', 20, 'Available');
insert into asset values( 106, 'Mobile', 'MI', 35, 'Available');
insert into asset values( 107, 'House', '3BHK', 10, 'Available');
insert into asset values( 108, 'House', '2BHK', 15, 'Available');
insert into asset values( 109, 'House', '1BHK', 15, 'Available');


create table employee(empno integer(6),ename varchar(10),job varchar(10),mgrno integer(5),hiredate date,deptid integer(10));
insert into employee values( 7839, 'KING', 'PRESIDENT', null, '1981-11-17',10);
insert into employee values( 7698, 'BLAKE', 'MANAGER', 7839, '1981-5-1', 30);
insert into employee values( 7782, 'CLARK', 'MANAGER', 7839,'1981-6-9',  10);
insert into employee values( 7566, 'JONES', 'MANAGER', 7839, '1981-4-2', 20);
insert into employee values( 7788, 'SCOTT', 'ANALYST', 7566, '1987-7-13', 20);
insert into employee values( 7902, 'FORD', 'ANALYST', 7566, '1981-12-3', 20);

create table Department(Dept_ID integer, Dept_Name VARCHAR(50));
insert into Department values(10, 'ACCOUNTING');
insert into Department values(20, 'RESEARCH');
insert into Department values(30, 'SALES');
insert into Department values(40, 'OPERATIONS');

create table Asset_Allocation(AllocationId INTEGER, AssetId INTEGER, Empno INTEGER References Employee(Empno) , Allocation_date Date, Release_date Date);
