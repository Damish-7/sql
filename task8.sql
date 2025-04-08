/*
Create following tables:
1. furniture_info : 10 columns use any one column as enum.
2. electronic_gadgets : 10 columns use any one column as enum.
3. restaurant_info : 10 columns use any one column as enum.
4. olympics_info : 10 columns use any one column as enum.

For each table apply NOT NULL, UNIQUE, check CONSTRAINT for 6 columns using ALTER.
Insert 15 data for each table.
ADD 2 COLUMNS using ALTER.
UPDATE datya for new columns.
*/


CREATE DATABASE Task_8;
CREATE TABLE  furniture_info(id int,name varchar(80),woodused varchar(90),polishType varchar(90), shop varchar(90), materialused int, location varchar(50),cost int, labourcharge int,furniturecolor varchar(90));


ALTER TABLE furniture_info ADD CONSTRAINT id  UNIQUE(id );
ALTER TABLE furniture_info ADD CONSTRAINT name  UNIQUE(name );
ALTER TABLE furniture_info ADD CONSTRAINT woodused  UNIQUE(woodused);
ALTER TABLE furniture_info ADD CONSTRAINT polishType  UNIQUE(polishType );
ALTER TABLE furniture_info ADD CONSTRAINT shop  UNIQUE(shop );
ALTER TABLE furniture_info ADD CONSTRAINT location  UNIQUE(location );

ALTER TABLE furniture_info MODIFY COLUMN woodused VARCHAR(30) NOT NULL;
ALTER TABLE furniture_info MODIFY COLUMN polishType VARCHAR(30) NOT NULL;
ALTER TABLE furniture_info ADD CONSTRAINT cost CHECK(cost > 5000);
ALTER TABLE furniture_info ADD CONSTRAINT materialused CHECK(materialused > 2);

INSERT INTO furniture_info  VALUES (1, 'Dining Table', 'Teak', 'Glossy', 'WoodCrafts', 12, 'New York', 6000, 200, 'Brown');  

INSERT INTO furniture_info   VALUES (2, 'Office Chair', 'Oak', 'Matte', 'FurniStyle', 8, 'Los Angeles', 7000, 100, 'Black');  

INSERT INTO furniture_info  VALUES (3, 'Wardrobe', 'Mahogany', 'Satin', 'Elite Woodworks', 20, 'Chicago', 8500, 400, 'Dark Brown');  

INSERT INTO furniture_info  VALUES (4, 'Bed Frame', 'Pine', 'Semi-Gloss', 'Comfort Living', 15, 'Houston', 9800, 300, 'Natural Wood');  

INSERT INTO furniture_info   VALUES (5, 'Bookshelf', 'Walnut', 'Glossys', 'Book Haven', 10, 'San Francisco', 10000, 150, 'Dark Walnut');  

INSERT INTO furniture_info  VALUES (6, 'Coffee Table', 'Cedar', 'Mattge', 'Rustic Charm', 6, 'Miami', 11600, 1120, 'Cherry Red');  

INSERT INTO furniture_info VALUES (7, 'Sofa Set', 'Rosewood', 'Satinq', 'Luxury Interiors', 25, 'Seattle', 63500, 500, 'Beige');  

INSERT INTO furniture_info  VALUES (8, 'TV Stand', 'Maple', 'Glogssy', 'Modern Living', 9, 'Boston', 12750, 530, 'White');  

INSERT INTO furniture_info VALUES (9, 'Dressing Table', 'Birch', 'Miatte', 'Home Elegance', 11, 'Phoenix', 11500, 180, 'Light Brown');  

INSERT INTO furniture_info  VALUES (10, 'Study Desk', 'Cherry', 'SemiGloss', 'Smart Office', 7, 'Dallas', 96550, 140, 'Mahogany');  

INSERT INTO furniture_info  VALUES (11, 'Rocking Chair', 'Hickory', 'Glossyo', 'Classic Comforts', 5, 'Denver', 45850, 130, 'Dark Oak');  

INSERT INTO furniture_info VALUES (12, 'Bar Stool', 'Ash', 'Mattie', 'Urban Decor', 4, 'Austin', 65400, 90, 'Gray');  

INSERT INTO furniture_info VALUES (13, 'Kitchen Cabinet', 'Spruce', 'Satinp', 'Home Essentials', 18, 'Philadelphia', 12200, 350, 'Cream');  

INSERT INTO furniture_info   VALUES (14, 'Recliner', 'Poplar', 'Glossyu', 'Cozy Living', 14, 'San Diego', 12700, 450, 'Navy Blue');  

INSERT INTO furniture_info  VALUES (15, 'Console Table', 'Ebony', 'Semi-Glosss', 'Elegant Touch', 13, 'Las Vegas', 10300, 210, 'Black');  

ALTER TABLE furniture_info ADD COLUMN offer int;
ALTER TABLE furniture_info ADD COLUMN item INT;

select * from furniture_info ;

UPDATE furniture_info SET offer = 20 WHERE id = 1;
UPDATE furniture_info SET offer = 30 WHERE id = 2;
UPDATE furniture_info SET offer = 40 WHERE id = 3;
UPDATE furniture_info SET offer = 50 WHERE id = 4;
UPDATE furniture_info SET offer = 20 WHERE id = 5;
UPDATE furniture_info SET offer = 30 WHERE id = 6;
UPDATE furniture_info SET offer = 40 WHERE id = 7;
UPDATE furniture_info SET offer = 50 WHERE id = 8;
UPDATE furniture_info SET offer = 20 WHERE id = 9;
UPDATE furniture_info SET offer = 30 WHERE id = 10;
UPDATE furniture_info SET offer = 40 WHERE id = 11;
UPDATE furniture_info SET offer = 50 WHERE id = 12;
UPDATE furniture_info SET offer = 20 WHERE id = 13;
UPDATE furniture_info SET offer = 30 WHERE id = 14;
UPDATE furniture_info SET offer = 40 WHERE id = 15;


UPDATE furniture_info SET item = 1 WHERE id = 1;
UPDATE furniture_info SET item = 3 WHERE id = 2;
UPDATE furniture_info SET item = 4 WHERE id = 3;
UPDATE furniture_info SET item = 9 WHERE id = 4;
UPDATE furniture_info SET item = 1 WHERE id = 5;
UPDATE furniture_info SET item = 4 WHERE id = 6;
UPDATE furniture_info SET item = 5 WHERE id = 7;
UPDATE furniture_info SET item = 12 WHERE id = 8;
UPDATE furniture_info SET item = 2 WHERE id = 9;
UPDATE furniture_info SET item = 3 WHERE id = 10;
UPDATE furniture_info SET item =8 WHERE id = 11;
UPDATE furniture_info SET item = 8 WHERE id = 12;
UPDATE furniture_info SET item = 10 WHERE id = 13;
UPDATE furniture_info SET item = 4 WHERE id = 14;
UPDATE furniture_info SET item = 3 WHERE id = 15;

select * from furniture_info ;