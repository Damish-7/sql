create database april_9;

use april_9;
create table college_info (
    college_id int,
    college_name varchar(50),
    city varchar(50),
    established_year int,
    college_type varchar(50)
);

create table student_info (
    student_id int,
    student_name varchar(50),
    student_age int,
    student_course varchar(50),
    college_id int
);

ALTER TABLE college_info ADD CONSTRAINT primary_key_college PRIMARY KEY (college_id);

ALTER TABLE student_info ADD CONSTRAINT primary_key_student PRIMARY KEY (student_id);

ALTER TABLE student_info ADD CONSTRAINT foreign_key_college_student
FOREIGN KEY (college_id) REFERENCES college_info(college_id);

ALTER TABLE college_info ADD CONSTRAINT chk_established_year 
CHECK (established_year >= 1999);

ALTER TABLE student_info ADD CONSTRAINT chk_age CHECK (student_age >= 17);

ALTER TABLE college_info ADD CONSTRAINT chk_established_year CHECK(established_year>=1999);


INSERT INTO college_info VALUES 
(101, 'Government College of Engineering', 'Bangalore', 1999, 'Government'),
(102, 'Kalpataru College of Engineering', 'Kunigal', 2001, 'Private'),
(103, 'KVG College of Engineering', 'Sullia', 2000, 'Private'),
(104, 'Indian Institute of Technology Dharwad', 'Dharwad', 2016, 'Government'),
(105, 'Jawaharlal Nehru National College', 'Shimoga', 2001, 'Private'),
(106, 'Gogte Institute of Technology', 'Belgaum', 2005, 'Private'),
(107, 'National Institute of Technology', 'Surathkal', 2003, 'Government'),
(108, 'Nitte Meenakshi Institute of Technology', 'Bangalore', 2001, 'Private'),
(109, 'Siddaganga Institute of Technology', 'Tumkur', 2018, 'Private'),
(110, 'Dayananda Sagar College of Engineering', 'Bangalore', 2008, 'Private'),
(111, 'Government College of Engineering', 'Haveri', 2007, 'Government'),
(112, 'SDM College of Engineering and Technology', 'Dharwad', 2006, 'Private'),
(113, 'Government Engineering College', 'Raichur', 2007, 'Government'),
(114, 'Bangalore Institute of Technology', 'Bangalore', 1999, 'Private'),
(115, 'Guru Nanak Dev Engineering College', 'Bidar', 2010, 'Private');

INSERT INTO student_info VALUES 
(11, 'Sameul', 21, 'ECE', 103),
(12, 'Damish', 22, 'CSE', 103),
(13, 'Afsar', 21, 'CSE', 103),
(14, 'Prajwal', 23, 'EEE', 103),
(15, 'Sajay', 22, 'AIML', 101),
(16, 'Rumaan', 22, 'EC', 102),
(17, 'Midlaj', 25, 'CS', 105),
(18, 'Shaan', 21, 'EC', 106),
(19, 'Lalith', 22, 'CSE', 109),
(20, 'Manikantha', 24, 'EC', 115),
(21, 'Ibrahim', 22, 'ME', 111),
(22, 'Jashi', 23, 'CV', 112),
(23, 'Yash', 22, 'CSE', 110),
(24, 'Darshan', 22, 'CSE', 111),
(25, 'Thomas', 22, 'CSE', 103),
(26, 'Sijal', 25, 'CS', 113),
(27, 'Sinan', 23, 'AIML', 103),
(28, 'Ravi', 23, 'CV', 103),
(29, 'Dinesh', 21, 'ME', 111),
(30, 'Yathish', 22, 'CE', 103);


ALTER TABLE student_info ADD student_email varchar(100);

ALTER TABLE college_info RENAME COLUMN city TO campus_city;

ALTER TABLE college_info RENAME COLUMN established_year TO estd_year;

ALTER TABLE student_info RENAME COLUMN student_age TO stud_age;


ALTER TABLE college_info MODIFY college_type varchar(50);

ALTER TABLE student_info MODIFY student_email varchar(150);

ALTER TABLE student_info MODIFY student_name varchar(120);

UPDATE student_info SET student_email = 'sameul@gmail.com' WHERE student_id = 11;
UPDATE student_info SET student_email = 'darshan@gmail.com' WHERE student_id = 24;
UPDATE student_info SET student_email = 'yathish@gmail.com' WHERE student_id = 30;
UPDATE student_info SET student_email = 'lalith@gmail.com' WHERE student_id = 19;
UPDATE student_info SET student_email = 'midlaj@gmail.com' WHERE student_id = 17;
UPDATE college_info SET campus_city = 'Bangalore' WHERE college_id = 106;
UPDATE college_info SET campus_city = 'Surathkal' WHERE college_id = 107;
UPDATE college_info SET campus_city = 'Belgaum' WHERE college_id = 106;
UPDATE college_info SET college_name = 'Siddaganga Institute of Technology' WHERE college_id = 109;
UPDATE college_info SET college_name = 'Basaveshwar Engineering College' WHERE college_id = 114;
UPDATE college_info SET college_name = 'Guru Nanak Dev Engg. College' WHERE college_id = 115;
UPDATE college_info SET college_type = 'Govt' WHERE college_type = 'Government';
UPDATE college_info SET college_type = 'Private' WHERE college_type LIKE 'Priv%';


DELETE FROM student_info WHERE student_id = 12;
DELETE FROM student_info WHERE student_id = 15;
DELETE FROM student_info WHERE student_id = 16;
DELETE FROM student_info WHERE student_id = 20;
DELETE FROM college_info WHERE college_id = 115;
DELETE FROM college_info WHERE estd_year > 2010;
DELETE FROM college_info WHERE college_type = 'Private' AND campus_city = 'Bangalore';
DELETE FROM college_info WHERE campus_city LIKE 'D%';
DELETE FROM college_info WHERE college_id IN (106, 110, 113);


SELECT * FROM student_info WHERE student_course = 'CSE' AND stud_age > 20;
SELECT * FROM student_info WHERE student_course = 'EC' OR stud_age < 23;
SELECT * FROM student_info WHERE student_id IN (11, 15, 18);
SELECT * FROM student_info WHERE student_id NOT IN (19,20);
SELECT * FROM student_info WHERE stud_age BETWEEN 21 AND 25;
SELECT * FROM student_info WHERE stud_age NOT BETWEEN 21 AND 23;
SELECT student_course, COUNT(*) AS student_count FROM student_info GROUP BY student_course;
SELECT AVG(stud_age) AS avg_age FROM student_info;
SELECT MAX(stud_age) AS max_age FROM student_info;
SELECT MIN(stud_age) AS min_age FROM student_info;
SELECT SUM(stud_age) AS total_age FROM student_info;

SELECT * FROM college_info c INNER JOIN student_info s ON c.college_id = s.college_id;
SELECT * FROM college_info c RIGHT JOIN student_info s ON c.college_id = s.college_id;
SELECT * FROM college_info c LEFT JOIN student_info s ON c.college_id = s.college_id;











