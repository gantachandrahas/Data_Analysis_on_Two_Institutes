                                 
                                   
                                              ### 2nd Project ###
                                              
                                              
-- Once a student is passed out from a Institute or College, he/she is known as Alumni of the Institute. Alumni’s career growth plays important role in Institute’s ranking and other networking activities. In this project, career choices of alumni of two Universities will be analyzed with respect to their passing year as well as the course they completed. 

-- Dataset: Six .csv file (Alumni record of College A and College B) Higher Studies, Self Employed and Service/Job record 

-- College_A_HS ~ Higher Studies Record of College A
-- College_A_SE ~ Self Employed Record of College A
-- College_A_SJ ~ Service/Job Record of College A
-- College_B_HS ~ Higher Studies Record of College B
-- College_B_SE ~ Higher Studies Record of College B
-- College_B_SJ ~ Higher Studies Record of College B


-- Tasks to be performed

-- 1.Create new schema as alumni

create database alumni;

-- 2.Import all .csv files into MySQL

-- right click of tables in alumni choose 'Table Data Import Wizard' option, Browse given files of college data. 
-- Press Next and check the file name without gap and again click next data will import start after finish and 
-- check the schema of tables refresh.

-- 3. Run SQL command to see the structure of six tables

use alumni;

desc college_a_hs;
desc college_a_se;
desc college_a_sj;

desc college_b_hs;
desc college_b_se;
desc college_b_sj;


-- 4. Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python.

-- Done using JupyterBook(Python) and attaching the jupyter nootebook 

-- 5. Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel.

-- open Excel
-- click data option on menubar 
-- select mysql
-- click local instance of root on right side of excel
-- Enter password to open mysql databases
-- select database of alumni after

-- for college_a_hs:
-- Double click on table of college_a_hs and select 'import mysql data' to open the data of give limit of 1500 rows already exists data
-- its result show the raw data on sheet.

-- for college_a_se:
-- Double click on table of college_a_se and select 'import mysql data' to open the data of give limit of 1500 rows already exists data.
-- its result the show raw data on sheet.

-- for college_a_sj:
-- Double click on table of college_a_sj and select 'import mysql data' to open the data of give limit of 1500 rows already exists data.
-- its result the show raw data on sheet.

-- for college_b_hs:
-- Double click on table of college_b_hs and select 'import mysql data' to open the data of give limit of 1500 rows already exists data.
-- its result the show raw data on sheet.

-- for college_b_se:
-- Double click on table of college_b_se and select 'import mysql data' to open the data of give limit of 1500 rows already exists data.
-- its result the show raw data.

-- for college_b_sj:
-- Double click on table of college_b_sj and select 'import mysql data' to open the data of give limit of 1500 rows already exists data.
-- its result the show raw data.

-- 6. Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
use alumni;
select * from college_a_hs;
CREATE VIEW college_a_hs_v AS
    SELECT
        *
    FROM
        college_a_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND EntranceExam  IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
           
select * from college_a_hs_v;


-- 7. Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.
select * from college_a_se;

CREATE VIEW college_a_se_v AS
    SELECT
        *
    FROM
        college_a_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization IS NOT NULL
            AND Location IS NOT NULL;
           
select * from college_a_se_v;

-- 8. Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
select * from college_a_sj;


CREATE VIEW college_a_sj_v AS
    SELECT
        *
    FROM
        college_a_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization  IS NOT NULL
            AND designation IS NOT NULL
            AND Location IS NOT NULL;
           
select * from college_a_sj_V;


-- 9. Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.

select * from college_b_hs;

CREATE VIEW college_b_hs_v AS
    SELECT
        *
    FROM
        college_b_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND EntranceExam  IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
           
select * from college_b_hs_v;

-- 10. Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.

select * from college_b_se;

CREATE VIEW college_b_se_v AS
    SELECT
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization IS NOT NULL
            AND Location IS NOT NULL;
           
select * from college_b_se_v;

-- 11. Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V.

select * from college_b_sj;

CREATE VIEW college_b_sj_v AS
    SELECT
        *
    FROM
        college_b_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus  IS NOT NULL
            AND organization  IS NOT NULL
            AND designation IS NOT NULL
            AND Location IS NOT NULL;
           
select * from college_b_sj;

-- 12. Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case for views 
-- (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 

-- > college_a_hs:
delimiter %%
create procedure a_hs()
begin
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_a_hs_v;
end %%
delimiter ;
call a_hs();
drop procedure a_hs;

-- > college_a_se:
delimiter %%
create procedure a_se()
begin
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_a_se_v;
end %%
delimiter ;
call a_se();
drop procedure a_se;

--> college_a_sj:
delimiter %%
create procedure a_sj()
begin
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_a_sj_v;
end %%
delimiter ;
call a_sj();
drop procedure a_sj;

--> college_b_hs:
delimiter $$
create procedure b_hs()
begin
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_b_hs_v;
end $$
delimiter ;
call b_hs();

drop procedure b_hs;

--> college_b_se:
delimiter $$
create procedure b_se()
begin
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_b_se_v;
end $$
delimiter ;
call b_se();
drop procedure b_se;

--> college_b_sj:
delimiter $$
create procedure b_sj()
begin
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from college_b_sj_v;
end $$
delimiter ;
call b_sj();
drop procedure b_sj;

-- 13. Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V)
--  into MS Excel and make pivot chart for location of Alumni. 

-- Check the screenshots ( Word.doc )

-- 14. Write a query to create procedure get_name using the cursor to fetch names of all students from college A.
 
delimiter $$
create procedure get_name_a()
begin
declare finished integer default 0;
declare student_info text;
declare student_name text default '';
declare studentdetail cursor for select name from college_a;
declare continue Handler for not found set finished=1;
open studentdetail;
firstname:loop
fetch studentdetail into student_info;
if finished=1 then leave firstname;
end if;
set student_name=concat(student_info,' ; ',student_name);
end loop;
select student_name;
close studentdetail;
end $$
delimiter ;
drop procedure get_name_a;
call get_name_a();
 
-- 15. Write a query to create procedure get_name using the cursor to fetch names of all students from college B.

delimiter %%
create procedure get_name_b()
begin
declare finished integer default 0;
declare student_info text;
declare student_name text default '';
declare studentdetail cursor for select name from college_b;
declare continue Handler for not found set finished=1;
open studentdetail;
secondname:loop
fetch studentdetail into student_info;
if finished=1 then leave secondname;
end if;
set student_name=concat(student_info,' ; ',student_name);
end loop;
select student_name;
close studentdetail;
end %%
delimiter ;
drop procedure get_name_b;
call get_name_b();


-- 16. Calculate the percentage of career choice of College A and College B Alumni (w.r.t Higher Studies, Self Employed and Service/Job) 

-- > college_a

SELECT
    'Percent in Higher studies' 'Percentage of Career choice',
    (COUNT(college_a_hs.rollno) / 5884) * 100 'College A'
FROM
    college_a_hs
UNION SELECT
    'Percent in Self Employes',
    (COUNT(college_a_se.rollno) / 5884) * 100
FROM
    college_a_se
UNION SELECT
    'Percent in Service/Job',
    (COUNT(college_a_sj.rollno) / 5884) * 100
FROM
    college_a_sj;
   
-- > college_b

select'Percent in Higher studies' 'Percentage of Career choice',
    (COUNT(college_b_hs.rollno) / 2259) * 100 'College B'
FROM
    college_b_hs
UNION SELECT
    'Percent in Self Employes',
    (COUNT(college_b_se.rollno) / 2259) * 100
FROM
    college_b_se
UNION SELECT
    'Percent in Service/Job',
    (COUNT(college_b_sj.rollno) / 2259) * 100
FROM
    college_b_sj;
			