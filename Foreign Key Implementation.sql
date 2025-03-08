create database company;
use company;
 create table dept(
 did int primary key,
 dname varchar(20),
 location varchar(20)
 );
 create table emp(
 eid int primary key,
 name varchar(20),
 did int,
 foreign key(did) references dept(did)
 );
 desc dept;
 desc emp;
 
 insert into dept(did, dname, location) values
 (1, 'cse', 'mumbai'),
 (2, 'maths', 'dubai'),
 (3,'music', 'usa');
  select *from dept;
  
  insert into emp(eid, name, did) values
  (101, 'nack', 1),
  (102,'jack',2),
  (103,'dok',3);
  select *from emp;
  
    insert into emp(eid, name, did) values
    (104,'Simran',4);-- you can`t add here becoz as the department id -4 does not include in department table
     insert into dept(did, dname, location) values
     (4,'it','jammu'); -- you can add here as new department can be added
     
     delete from dept where did=4; /* did mein delete nhi hoga kyunki emp mein did 4 ha*/
     delete from emp where did=4; /* department ko delete krne k liye pehle employee ki department id ko delete krna pdega tbhi voh department id department table se delete hoga*/
      delete from dept where did=4; /* now its deleted*/
      
      delete from emp where eid=103;
      delete from dept where did=3;
      -- agr employee department m present hai toh uska department aap department table se delete nhi kr skte ho unless and untill apne voh employee company se remove kiya hai then voh aap did department table se delete kr skte hoo
      
     
