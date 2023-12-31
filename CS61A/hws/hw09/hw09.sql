CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  select dogs.name as name,sizes.size as size
  from dogs,sizes
  where dogs.height<=sizes.max and dogs.height>sizes.min;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  select parents.child
  from parents,dogs
  where parents.parent=dogs.name
  order by -dogs.height;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  select a.child as name1,b.child as name2,c.size as size
  from parents as a,parents as b,size_of_dogs as c,size_of_dogs as d
  where a.parent=b.parent and a.child<b.child and c.name=a.child and d.name=b.child and c.size=d.size;

-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  select 'The two siblings, ' || name1 || ' plus ' || name2 || ' have the same size: ' || size 
  from siblings;

