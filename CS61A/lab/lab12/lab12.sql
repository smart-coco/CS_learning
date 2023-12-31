.read data.sql


CREATE TABLE bluedog AS
  select color,pet from students where pet="dog" and color="blue";

CREATE TABLE bluedog_songs AS
  select color,pet,song from students where pet="dog" and color="blue";


CREATE TABLE smallest_int AS
  select time,smallest from students where smallest>2 order by smallest limit 20;


CREATE TABLE matchmaker AS
  select a.pet,a.song,a.color,b.color 
  from students as a,students as b 
  where a.time<b.time and a.pet=b.pet and a.song=b.song; 


CREATE TABLE sevens AS
  select a.seven
  from students as a,numbers as b 
  where a.time=b.time and (a.number=7 and b."7"="True"); 