CREATE DATABASE IF NOT EXISTS scott;
USE scott;

CREATE TABLE DEPT (
    DEPTNO INT PRIMARY KEY,
    DNAME VARCHAR(20),
    LOC VARCHAR(20)
);

CREATE TABLE EMP (
    EMPNO INT PRIMARY KEY,
    ENAME VARCHAR(20),
    JOB VARCHAR(20),
    MGR INT,
    HIREDATE DATE,
    SAL DECIMAL(10,2),
    COMM DECIMAL(10,2),
    DEPTNO INT,
    FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO)
);

CREATE TABLE SALGRADE (
    GRADE INT PRIMARY KEY,
    LOSAL DECIMAL(10,2),
    HISAL DECIMAL(10,2)
);

CREATE TABLE BONUS (
    ENAME VARCHAR(20),
    JOB VARCHAR(20),
    SAL DECIMAL(10,2),
    COMM DECIMAL(10,2)
);

CREATE TABLE DUMMY (
    DUMMY CHAR(1)
);




-- Insert data into DEPT
INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

-- Insert data into EMP
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000.00, NULL, 10),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000.00, NULL, 20),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-05', 3000.00, NULL, 20),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-21', 1300.00, NULL, 10),
(7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100.00, NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '1981-06-03', 950.00, NULL, 30);

-- Insert data into SALGRADE
INSERT INTO SALGRADE (GRADE, LOSAL, HISAL) VALUES
(1, 700.00, 1200.00),
(2, 1201.00, 1400.00),
(3, 1401.00, 2000.00),
(4, 2001.00, 3000.00),
(5, 3001.00, 9999.00);

-- Insert data into BONUS
INSERT INTO BONUS (ENAME, JOB, SAL, COMM) VALUES
('ALLEN', 'SALESMAN', 1600.00, 300.00),
('WARD', 'SALESMAN', 1250.00, 500.00);

-- Insert data into DUMMY
INSERT INTO DUMMY (DUMMY) VALUES ('X');
 use scott;
    show tables;
    select* from emp;
    select max(sal) as maxsal from emp;
    select max(sal) as maxsal from emp
    group by deptno;
    select deptno,max(sal) from emp group by deptno;
    select job,sum(sal),count(*) from emp group by job;
    select  deptno,job ,sum(sal),count(*)
    from emp
    group by deptno,job -- groups according to dept no and job
    order by deptno; -- ascending order -> dept no.
    use university;
    show tables;
    select* from enrollments;
    select grade,count(*)
    from enrollments
    group by Grade;
    select studentID,count(*)-- kis bache ne kitne courses m enroll kiya hai
    from enrollments
    group by studentID;
    -- kis subject/course  m kitne bache enrolled hai
    select courseid,count(*)
    from enrollments
    group by courseid;
    -- kis bache ki course id 10 se zyada hai
    select courseid,count(*)
    from enrollments
    group by courseid
     having count(*)>10;
    -- where count(*)>10; ->: This is invalid at this position