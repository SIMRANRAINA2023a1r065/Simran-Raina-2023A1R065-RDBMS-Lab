select user();
-- to show users and host list on your server
 select host,user,password from mysql.user; 
 create database csea4;
 show databases;
 -- creating a user that is creating a object same like that
 create user'stu1'@'localhost' identified by '1234'; -- for different machine user IP address here then.. and if it`s same machine then write'localhost'
 -- to check the  new user  of this database
 select user from mysql.user; 
 -- changing the password of the new user created
 alter user'stu1'@'localhost' identified by '4567';
 -- changing the name of the user
 -- rename user'stu1'@'localhost' to 'stu123'@'localhost'
 -- drop user 'stu1'@'localhost';
 
 
 -- grant create,alter,drop 
-- on csea4.* to'stu123'@'localhost'
 
 
 -- show databases;
 show grants for 'stu123'@'localhost';
 use csea4;
 create table students(rollno int,name varchar(20),email varchar(20));