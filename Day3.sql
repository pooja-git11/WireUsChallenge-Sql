REM   Script: day3
REM   sql challenge

create table Student( 
    rollNo int, 
    nameS varchar(50), 
    marks int, 
    stream varchar(50), 
    dateOfBirth varchar(50) 
);

insert into Student values (101, 'ABC', 98, 'Science', '2002-05-09');

insert into Student values (102, 'DEF', 97, 'Commerce', '2001-07-10');

insert into Student values (103, 'GHI', 96, 'Humanities', '2000-08-01');

select dateOfBirth 
from Student 
where dateOfBirth = (select min(dateOfBirth) from Student)  
or dateOfBirth = (select max(dateOfBirth) from Student);

