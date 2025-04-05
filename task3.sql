CREATE DATABASE TASK_3;

CREATE TABLE hospital_info2 (id int, 
paitient_name varchar(20), 
location varchar(20), 
age int, 
doc varchar(90), 
bill int);

insert into hospital_info2 values(1,'patrick','manglore',40,'sah',2500);

insert into hospital_info2 values(2,'kushal','mysore',19,'sanu',250);
insert into hospital_info2 values(3,'anu','koppa',16,'saksha',350);
insert into hospital_info2 values(4,'vijay','madkeri',26,'gido',2506);
insert into hospital_info2 values(5,'manish','mysore',48,'arun',450);
insert into hospital_info2 values(6,'damish','kr nagar',29,'saroja',550);
insert into hospital_info2 values(7,'andrew','hunsur',39,'sathya',650);
insert into hospital_info2 values(8,'panu','mandya',29,'vinaya',1250);
insert into hospital_info2 values(9,'sakshi','perajae',39,'raj',250);
insert into hospital_info2 values(10,'amruth','mysore',49,'kumar',650);
insert into hospital_info2 values(11,'lohith','kodagu',59,'sajith',280);
insert into hospital_info2 values(12,'akshath','manglore',19,'ranjith',150);
insert into hospital_info2 values(13,'kusma','sampajai',29,'afsar',2550);
insert into hospital_info2 values(14,'diganth','madhur',9,'sukesh',2560);
insert into hospital_info2 values(15,'sharu','bylkoppa',39,'chethan',1250);

select * from hospital_info2;




CREATE TABLE country_info(
id int,
name varchar(20),
president varchar(30),
captital varchar(40),
total_provision varchar(50),
currency varchar(60));

select * from country_info;
 insert into country_info values(1,"canada","mark carney","ottawa",10,"dollar");
  insert into country_info values(2,"australia","anthony","canberra",8,"aud");
   insert into country_info values(3,"germany","frank","berlin",16,"euro");
 insert into country_info values(4,"israel","isaac","jerusalem",6,"shekel");
 insert into country_info values(5,"usa","trump","newyork,20,dollar);
 
 
 insert into country_info values(6,"india","modi","new delhi",28,"rupee");
 insert into country_info values(7,"dubai","sheik","abu",7,"aed");
 insert into country_info values(8,"swizerland","karin","bern",26,"chf");
 insert into country_info values(9,"japan","emperor","tokyo",47,"yen");
 insert into country_info values(10,"south korea","choi","seoul",8,"won");
 insert into country_info values(11,"italy","sergio","rome",107,"euro");
 insert into country_info values(12,"France","emmanuel","paris",18,"euro");
 insert into country_info values(13,"new zeland","king charles","wellington",16,"dollar");
 insert into country_info values(14,"russia","valdimir","moscow",83,"ruble");
 insert into country_info values(15,"brazil","luiz","brazilla",26,"br");


 select * from country_info;
 CREATE TABLE scam_info1(
    id INT,
    name VARCHAR(20),
    name2 VARCHAR(23),
    country VARCHAR(20),
    year INT,
    organisation VARCHAR(20)
);
INSERT INTO scam_info1VALUES (1, "Ponzi Scheme", "Charles Ponzi", "USA", 1920, "Fraudulent Investment");  
INSERT INTO scam_info VALUES (2, "Bernie Madoff Scam", "Bernie Madoff", "USA", 2008, "Ponzi Scheme");  
INSERT INTO scam_info VALUES (3, "Wirecard Fraud", "Markus Braun", "Germany", 2020, "Financial Fraud");  
INSERT INTO scam_info VALUES (4, "Enron Scandal", "Jeffrey Skilling", "USA", 2001, "Corporate Fraud");  
INSERT INTO scam_info VALUES (5, "Fyre Festival", "Billy McFarland", "Bahamas", 2017, "Event Fraud");  
INSERT INTO scam_info VALUES (6, "Satyam Scam", "Ramalinga Raju", "India", 2009, "Corporate Fraud");  
INSERT INTO scam_info VALUES (7, "Theranos Fraud", "Elizabeth Holmes", "USA", 2015, "Health Tech Fraud");  
INSERT INTO scam_info VALUES (8, "Nirav Modi Scam", "Nirav Modi", "India", 2018, "Bank Fraud");  
INSERT INTO scam_info VALUES (9, "Bitconnect Scam", "Carlos Matos", "Global", 2018, "Crypto Ponzi");  
INSERT INTO scam_info VALUES (10, "OneCoin Scam", "Ruja Ignatova", "Bulgaria", 2014, "Cryptocurrency Fraud");  
INSERT INTO scam_info VALUES (11, "Luckin Coffee Fraud", "Jenny Zhiya Qian", "China", 2020, "Financial Fraud");  
INSERT INTO scam_info VALUES (12, "Volkswagen Emissions Scandal", "Martin Winterkorn", "Germany", 2015, "Corporate Fraud");  
INSERT INTO scam_info VALUES (13, "WeWork Collapse", "Adam Neumann", "USA", 2019, "Startup Overvaluation");  
INSERT INTO scam_info VALUES (14, "Adani Hindenburg Report", "Gautam Adani", "India", 2023, "Stock Market Manipulation");  
INSERT INTO scam_info VALUES (15, "Crypto Pump & Dump", "Unknown", "Global", 2021, "Market Manipulation");  



CREATE TABLE scan_info1 (
    id INT,
    name VARCHAR(20),
    name2 VARCHAR(23),
    country VARCHAR(20),
    year INT,
    organisation VARCHAR(20)
);