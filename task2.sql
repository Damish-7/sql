CREATE DATABASE wonderla;
CREATE TABLE  trip_details( id int, Name varchar(20), phone_num varchar(25), day varchar(30),time timestamp);

CREATE TABLE  college(id int, total_sub int , teacher_name varchar(32), class_timming time, holiday boolean);
CREATE TABLE  LOCATION(area varchar(45), district varchar(23), pincode int, climate_hot_cold boolean, vechicle_type varchar(43));
CREATE TABLE  EXAM_TIMETABLE(tim time, subject varchar(30), dates date, sign boolean, eligiblity boolean);
CREATE TABLE  sports_materials(brand varchar(30), reusable boolean, cost int, manufactured_year year);

DESC trip_details;
SELECT * FROM trip_details;

/* Adding two Columns*/
ALTER table  trip_details ADD COLUMN coulmn1 int, ADD COLUMN coulmn2 time;

/* Drop the column name*/
ALTER table trip_details DROP COLUMN phone_num;
SELECT * FROM trip_details;

/* renaming the column */
ALTER table trip_details RENAME COLUMN day TO mob;
SELECT * FROM trip_details;

ALTER table trip_details RENAME COLUMN id to sams;
SELECT * FROM trip_details;

ALTER table trip_details RENAME COLUMN Name to Names;
SELECT * FROM trip_details;

/* changing the column datatype*/
DESC trip_details;

ALTER table trip_details MODIFY COLUMN sams bigint;

ALTER table trip_details MODIFY COLUMN Names char;
DESC trip_details;

ALTER table trip_details MODIFY COLUMN mob int;
DESC trip_details;