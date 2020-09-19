REM   Script: Day2
REM   Day2

create table Store( 
    SNo varchar(5), 
    SName varchar(50), 
    Area varchar(50), 
    Distance int 
);

insert into Store values ('S01', 'ABC Computonics', 'GK ||', 50);

insert into Store values ('S02', 'All infotech Media', 'CP', 40);

insert into Store values ('S03', 'Tech Shope', 'Nehru Place', 35);

insert into Store values ('S04', 'Geeks Techno Soft', 'Nehru Place', 25);

insert into Store values ('S05', 'Hitech Tech Store', 'CP', 30);

insert into Store values ('S06', 'Gaffar Market', 'Karol Bagh', 20);

insert into Store values ('S07', 'Technovolt Store', 'CP', 10);

select SNo, SName, Distance 
from Store 
where Area = 'CP' and Distance = (select min(Distance) from Store);

