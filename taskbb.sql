CREATE TABLE electronic_gadgets (
    id INT,
    name VARCHAR(80),
    brand VARCHAR(90),
    category VARCHAR(90),
    shop VARCHAR(90),
    warranty INT,
    location VARCHAR(50),
    cost INT,
    service_charge INT,
    color VARCHAR(90)
);

ALTER TABLE electronic_gadgets ADD CONSTRAINT id UNIQUE(id);
ALTER TABLE electronic_gadgets ADD CONSTRAINT name UNIQUE(name);
ALTER TABLE electronic_gadgets ADD CONSTRAINT brand UNIQUE(brand);
ALTER TABLE electronic_gadgets ADD CONSTRAINT category UNIQUE(category);
ALTER TABLE electronic_gadgets ADD CONSTRAINT shop UNIQUE(shop);
ALTER TABLE electronic_gadgets ADD CONSTRAINT location UNIQUE(location);

ALTER TABLE electronic_gadgets MODIFY COLUMN brand VARCHAR(30) NOT NULL;
ALTER TABLE electronic_gadgets MODIFY COLUMN category VARCHAR(30) NOT NULL;
ALTER TABLE electronic_gadgets ADD CONSTRAINT cost CHECK(cost > 500);
ALTER TABLE electronic_gadgets ADD CONSTRAINT warranty CHECK(warranty > 1);

INSERT INTO electronic_gadgets VALUES (1, 'Smartphone', 'Samsung', 'Mobile', 'Tech Store', 2, 'New York', 60000, 500, 'Black');
INSERT INTO electronic_gadgets VALUES (2, 'Laptop', 'Dell', 'Computing', 'Best Buy', 3, 'Los Angeles', 75000, 700, 'Silver');
INSERT INTO electronic_gadgets VALUES (3, 'Smartwatch', 'Apple', 'Wearable', 'Gadget World', 2, 'Chicago', 30000, 400, 'Gold');
INSERT INTO electronic_gadgets VALUES (4, 'Tablet', 'Lenovo', 'Tablet', 'Digital Hub', 2, 'Houston', 45000, 600, 'Gray');
INSERT INTO electronic_gadgets VALUES (5, 'Bluetooth Speaker', 'Sony', 'Audio', 'Sound Center', 3, 'San Francisco', 10000, 300, 'Blue');
INSERT INTO electronic_gadgets VALUES (6, 'Gaming Console', 'Xbox', 'Gaming', 'Game Zone', 4, 'Miami', 65000, 1200, 'White');
INSERT INTO electronic_gadgets VALUES (7, 'Smart TV', 'LG', 'Television', 'Home Tech', 5, 'Seattle', 95000, 1500, 'Black');
INSERT INTO electronic_gadgets VALUES (8, 'Wireless Earbuds', 'Bose', 'Audio', 'Audio Lounge', 2, 'Boston', 12000, 500, 'Red');
INSERT INTO electronic_gadgets VALUES (9, 'Digital Camera', 'Canon', 'Photography', 'Camera World', 3, 'Phoenix', 55000, 800, 'Black');
INSERT INTO electronic_gadgets VALUES (10, 'Monitor', 'Asus', 'Computing', 'PC Parts', 2, 'Dallas', 30000, 600, 'Black');
INSERT INTO electronic_gadgets VALUES (11, 'VR Headset', 'Oculus', 'Virtual Reality', 'Future Tech', 3, 'Denver', 40000, 900, 'White');
INSERT INTO electronic_gadgets VALUES (12, 'Smart Refrigerator', 'Samsung', 'Appliance', 'Home Appliances', 5, 'Austin', 120000, 2500, 'Silver');
INSERT INTO electronic_gadgets VALUES (13, 'Wireless Router', 'TP-Link', 'Networking', 'Internet Hub', 3, 'Philadelphia', 8000, 200, 'White');
INSERT INTO electronic_gadgets VALUES (14, 'Projector', 'Epson', 'Presentation', 'Office Solutions', 4, 'San Diego', 65000, 1400, 'Gray');
INSERT INTO electronic_gadgets VALUES (15, 'Home Security Camera', 'Arlo', 'Security', 'Safe Home', 3, 'Las Vegas', 20000, 500, 'Black');

ALTER TABLE electronic_gadgets ADD COLUMN offer INT;
ALTER TABLE electronic_gadgets ADD COLUMN stock INT;

UPDATE electronic_gadgets SET offer = 20 WHERE id = 1;
UPDATE electronic_gadgets SET offer = 30 WHERE id = 2;
UPDATE electronic_gadgets SET offer = 40 WHERE id = 3;
UPDATE electronic_gadgets SET offer = 50 WHERE id = 4;
UPDATE electronic_gadgets SET offer = 20 WHERE id = 5;
UPDATE electronic_gadgets SET offer = 30 WHERE id = 6;
UPDATE electronic_gadgets SET offer = 40 WHERE id = 7;
UPDATE electronic_gadgets SET offer = 50 WHERE id = 8;
UPDATE electronic_gadgets SET offer = 20 WHERE id = 9;
UPDATE electronic_gadgets SET offer = 30 WHERE id = 10;
UPDATE electronic_gadgets SET offer = 40 WHERE id = 11;
UPDATE electronic_gadgets SET offer = 50 WHERE id = 12;
UPDATE electronic_gadgets SET offer = 20 WHERE id = 13;
UPDATE electronic_gadgets SET offer = 30 WHERE id = 14;
UPDATE electronic_gadgets SET offer = 40 WHERE id = 15;

UPDATE electronic_gadgets SET stock = 10 WHERE id = 1;
UPDATE electronic_gadgets SET stock = 5 WHERE id = 2;
UPDATE electronic_gadgets SET stock = 8 WHERE id = 3;
UPDATE electronic_gadgets SET stock = 12 WHERE id = 4;
UPDATE electronic_gadgets SET stock = 7 WHERE id = 5;
UPDATE electronic_gadgets SET stock = 3 WHERE id = 6;
UPDATE electronic_gadgets SET stock = 6 WHERE id = 7;
UPDATE electronic_gadgets SET stock = 4 WHERE id = 8;
UPDATE electronic_gadgets SET stock = 9 WHERE id = 9;
UPDATE electronic_gadgets SET stock = 11 WHERE id = 10;
UPDATE electronic_gadgets SET stock = 2 WHERE id = 11;
UPDATE electronic_gadgets SET stock = 5 WHERE id = 12;
UPDATE electronic_gadgets SET stock = 13 WHERE id = 13;
UPDATE electronic_gadgets SET stock = 7 WHERE id = 14;
UPDATE electronic_gadgets SET stock = 4 WHERE id = 15;

SELECT * FROM electronic_gadgets;