// Creating Database

create database caps_asset;

//Creating the User_Master table and inserting data.
create table user_master(userid number(5),username varchar2(20),userpassword varchar2(20),usertype varchar2(20));
insert into user_master values(1,'A','123','admin');
insert into user_master values(2,'b','456','manager');
insert into user_master values(3,'c','789','manager');
insert into user_master values(4,'d','101','manager');
insert into user_master values(5,'e','102','manager');
insert into user_master values(6,'f','103','manager');


create table asset(assetid number(6) primary key,assetname varchar2(20),assetdes varchar2(50),quantity varchar2(20),status varchar2(20));
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


create table employee(empno number(6),ename varchar2(10),job varchar2(10),mgrno number(5),hiredate date,deptid number(10));
insert into employee values( 7839, 'KING', 'PRESIDENT', null, to_date('17-11-1981','dd-mm-yyyy'),10);
insert into employee values( 7698, 'BLAKE', 'MANAGER', 7839, to_date('1-5-1981','dd-mm-yyyy'), 30);
insert into employee values( 7782, 'CLARK', 'MANAGER', 7839, to_date('9-6-1981','dd-mm-yyyy'),  10);
insert into employee values( 7566, 'JONES', 'MANAGER', 7839, to_date('2-4-1981','dd-mm-yyyy'), 20);
insert into employee values( 7788, 'SCOTT', 'ANALYST', 7566, to_date('13-7-1987','dd-mm-yyyy'), 20);
insert into employee values( 7902, 'FORD', 'ANALYST', 7566, to_date('3-12-1981','dd-mm-yyyy'), 20);

create table Department(Dept_ID int, Dept_Name VARCHAR2(50));
insert into Department values(10, 'ACCOUNTING');
insert into Department values(20, 'RESEARCH');
insert into Department values(30, 'SALES');
insert into Department values(40, 'OPERATIONS');

create table Asset_Allocation(AllocationId Number, AssetId Number, Empno Number References Employee(Empno) , Allocation_date Date, Release_date Date);
