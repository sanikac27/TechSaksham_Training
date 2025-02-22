/*
1. Create a table in the HR schema called SALES_PEOPLE. The structure of this table should be the same as the EMP table... with one difference:

==> Instead of the SAL and COMM columns hava a column called TOTAL_PAY
*/
CREATE TABLE HR.SALES_PEOPLE AS 
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, (SAL + COALESCE(COMM, 0)) AS TOTAL_PAY, DEPTNO
FROM HR.EMP
WHERE 1=0;  -- This ensures the structure is copied but no data is inserted

/* 
2. Insert records into the SALES_PEOPLE table from the EMP table with only the records where the job is SALESMAN. (SAL + COMM = TOTAL_PAY)
*/
INSERT INTO HR.SALES_PEOPLE (EMPNO, ENAME, JOB, MGR, HIREDATE, TOTAL_PAY, DEPTNO)
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, (SAL + COALESCE(COMM, 0)), DEPTNO
FROM HR.EMP
WHERE JOB = 'SALESMAN';

-- select all records from the table
SELECT * FROM HR.SALES_PEOPLE;

-- update the records to change the job title from "SALESMAN" TO "SENIOR SALESMAN" if the employee TOTAL_PAY is over 2000.
UPDATE HR.SALES_PEOPLE
SET JOB = 'SENIOR SALESMAN'
WHERE TOTAL_PAY > 2000;

-- select all records from the table.
SELECT * FROM HR.SALES_PEOPLE;

-- drop the table
DROP TABLE HR.SALES_PEOPLE;