/* 
Assignment:
Create 5 Tables with 10 columns
Using ALTER apply NOT NULL, Unique, and Check constraints for any 3 columns.
Table 1 - PK
Table 2 - PK, FK (Table 1)
Table 3 - PK, FK (Table1, Table2)
Table 4 - PK, FK (Table 1, Table 2, Table 3)
Table 5 - PK, FK (Table1, Table2, Table3, Table4)

Insert 20 data for each table.
Using ALTER rename column names for 4 columns.
Fetch the data using AND, OR, IN, BETWEEN, NOT IN, NOT BETWEEN, LIKE, GROUP BY, HAVING, Aggregate functions

*/
CREATE DATABASE TASK_9;
 
CREATE TABLE Hospital (
    Hospital_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Capacity INT,
    Type VARCHAR(50),
    Contact_Number VARCHAR(15),
    Email VARCHAR(100),
    Established_Year INT,
    Department VARCHAR(50),
    Specialties VARCHAR(50)
);


CREATE TABLE Doctor (
    Doctor_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    Experience INT,
    Contact_Number VARCHAR(15),
    Email VARCHAR(100),
    Salary DECIMAL(10,2),
    Available BOOLEAN,
    Shift VARCHAR(50),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID)
);



CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Doctor_ID INT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Contact_Number VARCHAR(15),
    Address VARCHAR(15),
    Disease VARCHAR(100),
    Admission_Date VARCHAR(15),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);
ALTER TABLE Patient MODIFY COLUMN Address VARCHAR(100);

CREATE TABLE Treatment (
    Treatment_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Doctor_ID INT,
    Patient_ID INT,
    Treatment_Name VARCHAR(100),
    Cost DECIMAL(10,2),
    Start_Date VARCHAR(15),
    End_Date VARCHAR(15),
    Status VARCHAR(50),
    Notes VARCHAR(15),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);
ALTER TABLE Treatment MODIFY COLUMN  Notes VARCHAR(100);


CREATE TABLE Billing (
    Bill_ID INT PRIMARY KEY,
    Hospital_ID INT,
    Doctor_ID INT,
    Patient_ID INT,
    Treatment_ID INT,
    Amount DECIMAL(10,2),
    Payment_Method VARCHAR(50),
    Payment_Date VARCHAR(15),
    Status VARCHAR(50),
    Remarks VARCHAR(15),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Treatment_ID) REFERENCES Treatment(Treatment_ID)
);

SELECT * from Hospital;
SELECT * from Doctor;
SELECT * from Patient;
SELECT * from Treatment;
SELECT * from Billing;





/* Using ALTER apply NOT NULL, Unique, and Check constraints for any 3 columns */

ALTER TABLE Doctor MODIFY COLUMN Contact_Number VARCHAR(15) NOT NULL UNIQUE;

ALTER TABLE Patient MODIFY COLUMN Age INT CHECK (Age > 0);

ALTER TABLE Treatment MODIFY COLUMN Cost DECIMAL(10,2) CHECK (Cost > 0);

/* Insert 20 data for each table. */

INSERT INTO Hospital VALUES 
(1, 'City Hospital', 'New York', 500, 'General', '1234567890', 'cityhospital@gmail.com', 1990, 'JCI', 'Cardiology, Neurology'),
(2, 'Green Health Center', 'Los Angeles', 300, 'Specialist', '9876543210', 'greenhealth@gmail.com', 2005, 'NABH', 'Orthopedics, Oncology'),
(3, 'Sunrise Hospital', 'Chicago', 400, 'Multi-Specialty', '7896541230', 'sunrisehospital@gmail.com', 1995, 'JCI', 'ENT, Pulmonology'),
(4, 'Blue Cross Medical', 'Houston', 250, 'General', '4567893210', 'bluecross@gmail.com', 2010, 'ISO', 'Dermatology, Psychiatry'),
(5, 'MediCare Center', 'San Francisco', 350, 'Specialist', '3216549870', 'medicare@gmail.com', 2008, 'NABH', 'Endocrinology, Rheumatology'),
(6, 'Wellness Hospital', 'Seattle', 200, 'General', '7418529630', 'wellness@gmail.com', 2012, 'ISO', 'Gastroenterology, Cardiology'),
(7, 'LifeCare Hospital', 'Miami', 600, 'General', '9638527410', 'lifecare@gmail.com', 1998, 'JCI', 'Pediatrics, Oncology'),
(8, 'Hope Medical Center', 'Boston', 450, 'Specialist', '8527419630', 'hopemedical@gmail.com', 2003, 'NABH', 'Orthopedics, Cardiology'),
(9, 'Elite Hospital', 'Dallas', 300, 'Multi-Specialty', '7893216540', 'elite@gmail.com', 2001, 'ISO', 'Neurology, Urology'),
(10, 'Metro Hospital', 'Phoenix', 550, 'General', '4561237890', 'metro@gmail.com', 2000, 'JCI', 'Cardiology, Nephrology'),
(11, 'Grace Hospital', 'Atlanta', 400, 'Specialist', '9517532580', 'grace@gmail.com', 2007, 'ISO', 'Oncology, Pulmonology'),
(12, 'Royal Care', 'Philadelphia', 500, 'Multi-Specialty', '1597534860', 'royalcare@gmail.com', 1996, 'NABH', 'Psychiatry, Cardiology'),
(13, 'HealthFirst Clinic', 'Denver', 250, 'General', '3571594860', 'healthfirst@gmail.com', 2011, 'ISO', 'ENT, Rheumatology'),
(14, 'Evergreen Hospital', 'Detroit', 370, 'Specialist', '1472583690', 'evergreen@gmail.com', 2009, 'JCI', 'Gastroenterology, Endocrinology'),
(15, 'CureWell Center', 'San Diego', 280, 'Multi-Specialty', '3691472580', 'curewell@gmail.com', 2006, 'NABH', 'Nephrology, Cardiology'),
(16, 'Summit Health', 'Portland', 450, 'General', '2583691470', 'summit@gmail.com', 1993, 'ISO', 'Orthopedics, Neurology'),
(17, 'Vitality Hospital', 'Las Vegas', 320, 'Specialist', '6549873210', 'vitality@gmail.com', 2014, 'JCI', 'Pulmonology, Oncology'),
(18, 'Harbor Medical', 'Minneapolis', 500, 'Multi-Specialty', '9513574680', 'harbor@gmail.com', 2002, 'NABH', 'Psychiatry, Dermatology'),
(19, 'Sunshine Hospital', 'Tampa', 280, 'General', '8529637410', 'sunshine@gmail.com', 2015, 'ISO', 'Endocrinology, Nephrology'),
(20, 'WellBeing Hospital', 'Salt Lake City', 350, 'Specialist', '7896541235', 'wellbeing@gmail.com', 2016, 'NABH', 'Gastroenterology, ENT');



INSERT INTO Doctor VALUES
(1, 1, 'Dr. John Doe', 'Cardiologist', 15, '1234510986', 'dr.john@hospital.com', 200000, 1, 'Day'),
(2, 2, 'Dr. Sarah Lee', 'Oncologist', 10, '7890123456', 'dr.sarah@hospital.com', 180000, 1, 'Night'),
(3, 3, 'Dr. Mark Spencer', 'Pulmonologist', 8, '9876501234', 'dr.mark@hospital.com', 150000, 0, 'Evening'),
(4, 4, 'Dr. Emily Brown', 'Psychiatrist', 12, '4561237890', 'dr.emily@hospital.com', 170000, 1, 'Day'),
(5, 5, 'Dr. Liam Walker', 'Dermatologist', 9, '3214569870', 'dr.liam@hospital.com', 160000, 0, 'Night'),
(6, 6, 'Dr. Ava Johnson', 'Gastroenterologist', 18, '8529637411', 'dr.ava@hospital.com', 210000, 1, 'Day'),
(7, 7, 'Dr. Noah Carter', 'Pediatrician', 14, '9638527410', 'dr.noah@hospital.com', 190000, 1, 'Night'),
(8, 8, 'Dr. Oliver Hall', 'Orthopedic Surgeon', 20, '7531594560', 'dr.oliver@hospital.com', 220000, 1, 'Day'),
(9, 9, 'Dr. Mia Davis', 'Neurologist', 11, '8521479630', 'dr.mia@hospital.com', 195000, 0, 'Evening'),
(10, 10, 'Dr. Ethan Miller', 'Nephrologist', 10, '1597534860', 'dr.ethan@hospital.com', 185000, 1, 'Day'),
(11, 11, 'Dr. Sophia Wilson', 'Oncologist', 13, '3579514860', 'dr.sophia@hospital.com', 200000, 0, 'Night'),
(12, 12, 'Dr. Lucas White', 'Psychiatrist', 17, '6541593570', 'dr.lucas@hospital.com', 215000, 1, 'Day'),
(13, 13, 'Dr. Amelia Moore', 'ENT Specialist', 9, '1478529630', 'dr.amelia@hospital.com', 170000, 0, 'Evening'),
(14, 14, 'Dr. Elijah Taylor', 'Endocrinologist', 16, '9517538520', 'dr.elijah@hospital.com', 210000, 1, 'Day'),
(15, 15, 'Dr. Charlotte Harris', 'Nephrologist', 18, '3691478520', 'dr.charlotte@hospital.com', 225000, 0, 'Night'),
(16, 16, 'Dr. Benjamin Clark', 'Orthopedic Surgeon', 15, '2583691470', 'dr.benjamin@hospital.com', 205000, 1, 'Day'),
(17, 17, 'Dr. Madison Walker', 'Pulmonologist', 20, '6549873210', 'dr.madison@hospital.com', 230000, 0, 'Night'),
(18, 18, 'Dr. Daniel Scott', 'Dermatologist', 11, '9513574680', 'dr.daniel@hospital.com', 190000, 1, 'Day'),
(19, 19, 'Dr. Emily Thomas', 'Endocrinologist', 14, '8529637410', 'dr.emilyt@hospital.com', 185000, 0, 'Evening'),
(20, 20, 'Dr. William Roberts', 'Rheumatologist', 12, '7896541230', 'dr.william@hospital.com', 195000, 1, 'Day'); 



INSERT INTO Patient VALUES
(1, 1, 1, 'Alice Smith', 45, 'Female', '1122334455', 'NY', 'Heart Disease', '2024-03-01'),
(2, 2, 2, 'Bob Johnson', 60, 'Male', '9988776655', 'LA Avenue 12', 'Cancer', '2024-02-15'),
(3, 3, 3, 'Charlie Davis', 35, 'Male', '7766554433', 'Chicago Road 8', 'Asthma', '2024-01-20'),
(4, 4, 4, 'Daisy Brown', 50, 'Female', '6655443322', 'Houston Main St', 'Depression', '2024-02-05'),
(5, 5, 5, 'Ethan Wilson', 28, 'Male', '5544332211', 'SF Bay Area', 'Skin Allergy', '2024-03-12'),
(6, 6, 6, 'Fiona White', 40, 'Female', '4433221100', 'Seattle Lakeview', 'Acid Reflux', '2024-01-18'),
(7, 7, 7, 'George Harris', 55, 'Male', '3322110099', 'Miami South', 'Lung Cancer', '2024-03-30'),
(8, 8, 8, 'Hannah Walker', 32, 'Female', '2211009988', 'Boston Central', 'Fracture', '2024-02-25'),
(9, 9, 9, 'Ian Lewis', 65, 'Male', '1100998877', 'Dallas Uptown', 'Migraine', '2024-03-14'),
(10, 10, 10, 'Jessica King', 38, 'Female', '0099887766', 'Phoenix West', 'Kidney Stone', '2024-01-28'),
(11, 11, 11, 'Kevin Martinez', 48, 'Male', '8877665544', 'Atlanta East', 'Leukemia', '2024-02-21'),
(12, 12, 12, 'Lily Scott', 52, 'Female', '7766554433', 'Philadelphia North', 'Schizophrenia', '2024-03-05'),
(13, 13, 13, 'Michael Young', 30, 'Male', '6655443322', 'Denver South', 'Tonsillitis', '2024-01-31'),
(14, 14, 14, 'Nora Adams', 46, 'Female', '5544332211', 'Detroit Downtown', 'Diabetes', '2024-02-18'),
(15, 15, 15, 'Oliver Parker', 34, 'Male', '4433221100', 'San Diego West', 'Nephritis', '2024-03-09'),
(16, 16, 16, 'Penelope Rivera', 39, 'Female', '3322110099', 'Portland Central', 'Spinal Injury', '2024-01-27'),
(17, 17, 17, 'Quincy Bennett', 42, 'Male', '2211009988', 'Las Vegas Strip', 'Bronchitis', '2024-02-16'),
(18, 18, 18, 'Rachel Carter', 37, 'Female', '1100998877', 'Minneapolis East', 'PTSD', '2024-03-22'),
(19, 19, 19, 'Samuel Torres', 41, 'Male', '0099887766', 'Tampa Bay', 'High BP', '2024-02-10'),
(20, 20, 20, 'Tina Edwards', 36, 'Female', '8877665544', 'Salt Lake City', 'Ear Infection', '2024-03-18');


INSERT INTO Treatment VALUES
(1, 1, 1, 1, 'Angioplasty', 5000.00, '2024-03-02', '2024-03-10', 'Completed', 'Successful treatment'),
(2, 2, 2, 2, 'Chemotherapy', 12000.00, '2024-02-16', '2024-04-01', 'Ongoing', 'Responding well'),
(3, 3, 3, 3, 'Asthma Therapy', 2500.00, '2024-01-21', '2024-02-10', 'Completed', 'Good improvement'),
(4, 4, 4, 4, 'Depression Therapy', 3500.00, '2024-02-06', '2024-03-15', 'Ongoing', 'Needs further sessions'),
(5, 5, 5, 5, 'Allergy Treatment', 1500.00, '2024-03-13', '2024-03-20', 'Completed', 'No further symptoms'),
(6, 6, 6, 6, 'Gastric Bypass', 8000.00, '2024-01-19', '2024-02-25', 'Completed', 'Stable condition'),
(7, 7, 7, 7, 'Lung Cancer Therapy', 25000.00, '2024-03-31', '2024-06-15', 'Ongoing', 'Requires more sessions'),
(8, 8, 8, 8, 'Bone Fracture Surgery', 9000.00, '2024-02-26', '2024-03-25', 'Completed', 'Healing well'),
(9, 9, 9, 9, 'Migraine Treatment', 1800.00, '2024-03-15', '2024-03-18', 'Completed', 'No headache reported'),
(10, 10, 10, 10, 'Kidney Stone Removal', 6000.00, '2024-01-29', '2024-02-10', 'Completed', 'Successful operation'),
(11, 11, 11, 11, 'Leukemia Therapy', 27000.00, '2024-02-22', '2024-05-10', 'Ongoing', 'Responding to treatment'),
(12, 12, 12, 12, 'Psychiatric Counseling', 2000.00, '2024-03-06', '2024-03-30', 'Ongoing', 'Stable mental health'),
(13, 13, 13, 13, 'Tonsil Removal Surgery', 4000.00, '2024-02-01', '2024-02-10', 'Completed', 'No issues'),
(14, 14, 14, 14, 'Diabetes Management', 3500.00, '2024-02-19', '2024-04-01', 'Ongoing', 'Requires regular monitoring'),
(15, 15, 15, 15, 'Nephritis Therapy', 7500.00, '2024-03-10', '2024-03-28', 'Completed', 'Stable kidney function'),
(16, 16, 16, 16, 'Spinal Surgery', 18000.00, '2024-01-28', '2024-03-05', 'Completed', 'Recovery ongoing'),
(17, 17, 17, 17, 'Bronchitis Treatment', 2200.00, '2024-02-17', '2024-02-25', 'Completed', 'No cough reported'),
(18, 18, 18, 18, 'PTSD Counseling', 5000.00, '2024-03-23', '2024-04-15', 'Ongoing', 'Moderate improvement'),
(19, 19, 19, 19, 'Blood Pressure Control', 1600.00, '2024-02-11', '2024-03-01', 'Completed', 'BP under control'),
(20, 20, 20, 20, 'Ear Infection Treatment', 1900.00, '2024-03-19', '2024-03-25', 'Completed', 'No further symptoms');

INSERT INTO Billing VALUES
(1, 1, 1, 1, 1, 5000.00, 'Credit Card', '2024-03-11', 'Paid', 'No issues'),
(2, 2, 2, 2, 2, 12000.00, 'Insurance', '2024-04-02', 'Pending', 'Awaiting claim processing'),
(3, 3, 3, 3, 3, 2500.00, 'Debit Card', '2024-02-12', 'Paid', 'Transaction successful'),
(4, 4, 4, 4, 4, 3500.00, 'Cash', '2024-03-16', 'Paid', 'Discount applied'),
(5, 5, 5, 5, 5, 1500.00, 'Insurance', '2024-04-05', 'Pending', 'Waiting for insurance approval'),
(6, 6, 6, 6, 6, 8000.00, 'Bank Transfer', '2024-02-28', 'Paid', 'No remarks'),
(7, 7, 7, 7, 7, 25000.00, 'Credit Card', '2024-05-01', 'Pending', 'High-cost treatment'),
(8, 8, 8, 8, 8, 9000.00, 'Cash', '2024-03-27', 'Paid', 'Immediate settlement'),
(9, 9, 9, 9, 9, 1800.00, 'UPI', '2024-03-20', 'Paid', 'Mobile payment success'),
(10, 10, 10, 10, 10, 6000.00, 'Debit Card', '2024-02-14', 'Paid', 'No refund applicable'),
(11, 11, 11, 11, 11, 27000.00, 'Insurance', '2024-06-10', 'Pending', 'Verification under process'),
(12, 12, 12, 12, 12, 2000.00, 'Credit Card', '2024-03-31', 'Paid', 'EMI option used'),
(13, 13, 13, 13, 13, 4000.00, 'Bank Transfer', '2024-02-15', 'Paid', 'Swift payment confirmed'),
(14, 14, 14, 14, 14, 3500.00, 'Cash', '2024-04-07', 'Paid', 'Bill settled in full'),
(15, 15, 15, 15, 15, 7500.00, 'Insurance', '2024-03-12', 'Pending', 'Claim filed, awaiting processing'),
(16, 16, 16, 16, 16, 18000.00, 'Credit Card', '2024-02-20', 'Paid', 'Large transaction verified'),
(17, 17, 17, 17, 17, 2200.00, 'UPI', '2024-02-26', 'Paid', 'Instant payment successful'),
(18, 18, 18, 18, 18, 5000.00, 'Insurance', '2024-04-12', 'Pending', 'Policy under review'),
(19, 19, 19, 19, 19, 1600.00, 'Debit Card', '2024-03-04', 'Paid', 'Confirmed transaction'),
(20, 20, 20, 20, 20, 1900.00, 'Bank Transfer', '2024-03-26', 'Paid', 'Settlement completed');
ALTER TABLE billing MODIFY COLUMN  remarks VARCHAR(100);

/* Using ALTER rename column names for 4 columns */

ALTER TABLE Hospital RENAME COLUMN Contact_Number TO Phone;
ALTER TABLE Doctor RENAME COLUMN Contact_Number TO Mobile;
ALTER TABLE Patient RENAME COLUMN Contact_Number TO Phone_Number;
ALTER TABLE Treatment RENAME COLUMN Cost TO Treatment_Cost;


/*Fetch the data using AND, OR, IN, BETWEEN, NOT IN, NOT BETWEEN, LIKE, GROUP BY, HAVING, Aggregate functions*/

SELECT * FROM Patient WHERE Age > 40 AND Gender = 'Female';
SELECT * FROM Doctor WHERE Specialization = 'Cardiologist' OR Specialization = 'Neurologist';


SELECT * FROM Treatment WHERE Treatment_Name IN ('Angioplasty', 'Chemotherapy');
SELECT * FROM Billing WHERE Payment_Method NOT IN ('Credit Card', 'Insurance');

SELECT * FROM Billing WHERE Amount BETWEEN 5000 AND 15000;
SELECT * FROM Treatment WHERE Start_Date NOT BETWEEN '2024-01-01' AND '2024-03-01';


SELECT * FROM Doctor WHERE Name LIKE 'Dr. J%';
SELECT * FROM Patient WHERE Address LIKE '%NY%';


SELECT AVG(Age) AS Avg_Patient_Age FROM Patient;
SELECT SUM(Amount) AS Total_Revenue FROM Billing;
SELECT MAX(Salary) AS Highest_Salary FROM Doctor;