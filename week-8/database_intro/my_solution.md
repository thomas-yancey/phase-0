###1.
SELECT * FROM states;
###2.
SELECT * FROM regions;
###3.
SELECT state_name,populations FROM states;
###4.
SELECT state_name,population FROM states
ORDER BY population DESC;
###5.
SELECT state_name FROM states
WHERE region_id=7;
###6.
SELECT state_name,population_density FROM states
WHERE population_density>=50
ORDER BY population_density ASC;
###7.
SELECT state_name FROM states
WHERE population BETWEEN 1000000 AND 1500000;
###8.
SELECT state_name,region_id FROM states
ORDER BY region_id ASC;
###9.
SELECT region_name FROM regions
WHERE region_name LIKE '%Central';
###10.
SELECT regions.region_name,states.state_name
FROM states
INNER JOIN regions
ON states.region_id=regions.id
ORDER BY regions.id;

![schema screenshot](schema_screenshot.png)

###What are databases for?
Databases are for storing large amounts of data in an organized way so that it can easily be created, updated, retrieved, and deleted
###What is a one-to-many relationship?
A one to many relationship is one in which the property or field applies to many other fields or properties, the example given was regions have many states. to take it further states have many cities, cities have many families, families have many people.
###What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is the id which is being referenced by a foreign key. It is housed in the table for that property, a foreign key will exist in another table to link it to that information.
###How can you select information out of a SQL database? What are some general guidelines for that?
selecting information can be done using various operators that for the most part take the shape of words. You can find the various operators on w3schools.com but some examples are BETWEEN, WHERE, SELECT. you do not need to capitalize but it is the standard way of doing it so for readability it is a good idea.
