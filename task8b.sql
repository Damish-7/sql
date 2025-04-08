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
ALTER TABLE electronic_gadgets ADD CONSTRAINT cost1 CHECK(cost > 500);
ALTER TABLE electronic_gadgets ADD CONSTRAINT warranty CHECK(warranty > 1);

INSERT INTO electronic_gadgets VALUES (1, 'Smartphone', 'Samsung', 'Mobile', 'Tech Store', 2, 'New York', 60000, 500, 'Black');
INSERT INTO electronic_gadgets VALUES (2, 'Laptop', 'Dell', 'Computing', 'Best Buy', 3, 'Los Angeles', 75000, 700, 'Silver');
INSERT INTO electronic_gadgets VALUES (3, 'Smartwatch', 'Apple', 'Wearable', 'Gadget World', 2, 'Chicago', 30000, 400, 'Gold');
INSERT INTO electronic_gadgets VALUES (4, 'Tablet', 'Lenovo', 'Tablet', 'Digital Hub', 2, 'Houston', 45000, 600, 'Gray');
INSERT INTO electronic_gadgets VALUES (5, 'Bluetooth Speaker', 'Sony', 'Audio', 'Sound Center', 3, 'San Francisco', 10000, 300, 'Blue');
INSERT INTO electronic_gadgets VALUES (6, 'Gaming Console', 'Xbox', 'Gaming', 'Game Zone', 4, 'Miami', 65000, 1200, 'White');
INSERT INTO electronic_gadgets VALUES (7, 'Smart TV', 'LG', 'Television', 'Home Tech', 5, 'Seattle', 95000, 1500, 'Black');
INSERT INTO electronic_gadgets VALUES (8, 'Wireless Earbuds', 'Bose', 'Audios', 'Audio Lounge', 2, 'Boston', 12000, 500, 'Red');
INSERT INTO electronic_gadgets VALUES (9, 'Digital Camera', 'Canon', 'Photography', 'Camera World', 3, 'Phoenix', 55000, 800, 'Black');
INSERT INTO electronic_gadgets VALUES (10, 'Monitor', 'Asus', 'Computings', 'PC Parts', 2, 'Dallas', 30000, 600, 'Black');
INSERT INTO electronic_gadgets VALUES (11, 'VR Headset', 'Oculus', 'Virtual Reality', 'Future Tech', 3, 'Denver', 40000, 900, 'White');
INSERT INTO electronic_gadgets VALUES (12, 'Smart Refrigerator', 'Samsungs', 'Appliance', 'Home Appliances', 5, 'Austin', 120000, 2500, 'Silver');
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

CREATE TABLE restaurant_info3 (
    id INT,
    name VARCHAR(80),
    category VARCHAR(90),
    shop VARCHAR(90),
    seats INT,
    location VARCHAR(50),
    costs INT,
    service_charge INT,
    style VARCHAR(90)
);

ALTER TABLE restaurant_info3 ADD CONSTRAINT id UNIQUE(id);
ALTER TABLE restaurant_info3 MODIFY COLUMN location VARCHAR(50) NOT NULL;
ALTER TABLE restaurant_info3 MODIFY COLUMN costs INT NOT NULL;
ALTER TABLE restaurant_info3 MODIFY COLUMN style VARCHAR(90) NOT NULL;

ALTER TABLE restaurant_info3 MODIFY COLUMN category ENUM('indoor', 'outdoor') NOT NULL;
ALTER TABLE restaurant_info3 ADD CONSTRAINT costs CHECK(costs > 500);
ALTER TABLE restaurant_info3 ADD CONSTRAINT seat CHECK(seats > 1);

INSERT INTO restaurant_info3 VALUES (1, 'The Italian Place', 'indoor', 'Food Court', 50, 'New York', 10000, 500, 'Italian');
INSERT INTO restaurant_info3 VALUES (2, 'Sushi Haven', 'outdoor', 'Gourmet Plaza', 40, 'Los Angeles', 12000, 700, 'Japanese');
INSERT INTO restaurant_info3 VALUES (3, 'BBQ Delight', 'indoor', 'Smoke House', 60, 'Chicago', 15000, 400, 'Barbecue');
INSERT INTO restaurant_info3 VALUES (4, 'Spice Town', 'outdoor', 'Curry House', 45, 'Houston', 14000, 600, 'Indian');
INSERT INTO restaurant_info3 VALUES (5, 'Taco Fiesta', 'indoor', 'Mexican Grill', 35, 'San Francisco', 11000, 300, 'Mexican');
INSERT INTO restaurant_info3 VALUES (6, 'Veggie Hub', 'outdoor', 'Healthy Bites', 30, 'Miami', 13000, 1200, 'Vegan');
INSERT INTO restaurant_info3 VALUES (7, 'Steak House', 'indoor', 'Meat Lovers', 55, 'Seattle', 18000, 1500, 'Steakhouse');
INSERT INTO restaurant_info3 VALUES (8, 'Noodle Street', 'outdoor', 'Asian Fusion', 40, 'Boston', 10500, 500, 'Chinese');
INSERT INTO restaurant_info3 VALUES (9, 'Seafood Corner', 'indoor', 'Ocean Delights', 70, 'Phoenix', 17500, 800, 'Seafood');
INSERT INTO restaurant_info3 VALUES (10, 'Pasta Palace', 'outdoor', 'Italian Bites', 50, 'Dallas', 12500, 600, 'Italian');
INSERT INTO restaurant_info3 VALUES (11, 'French Elegance', 'indoor', 'Parisian Dine', 65, 'Denver', 19000, 900, 'French');
INSERT INTO restaurant_info3 VALUES (12, 'Middle Eastern Grill', 'outdoor', 'Spice Hub', 45, 'Austin', 16000, 2500, 'Middle Eastern');
INSERT INTO restaurant_info3 VALUES (13, 'Korean Bites', 'indoor', 'K-BBQ', 40, 'Philadelphia', 13500, 200, 'Korean');
INSERT INTO restaurant_info3 VALUES (14, 'Brunch Delight', 'outdoor', 'Breakfast Club', 35, 'San Diego', 14500, 1400, 'Brunch');
INSERT INTO restaurant_info3 VALUES (15, 'Dessert Heaven', 'indoor', 'Sweet Treats', 50, 'Las Vegas', 9500, 500, 'Desserts');

ALTER TABLE restaurant_info3 ADD COLUMN offer INT;
ALTER TABLE restaurant_info3 ADD COLUMN available_seats INT;

UPDATE restaurant_info3 SET offer = 20 WHERE id = 1;
UPDATE restaurant_info3 SET offer = 30 WHERE id = 2;
UPDATE restaurant_info3 SET offer = 40 WHERE id = 3;
UPDATE restaurant_info3 SET offer = 50 WHERE id = 4;
UPDATE restaurant_info3 SET offer = 20 WHERE id = 5;
UPDATE restaurant_info3 SET offer = 30 WHERE id = 6;
UPDATE restaurant_info3 SET offer = 40 WHERE id = 7;
UPDATE restaurant_info3 SET offer = 50 WHERE id = 8;
UPDATE restaurant_info3 SET offer = 20 WHERE id = 9;
UPDATE restaurant_info3 SET offer = 30 WHERE id = 10;
UPDATE restaurant_info3 SET offer = 40 WHERE id = 11;
UPDATE restaurant_info3 SET offer = 50 WHERE id = 12;
UPDATE restaurant_info3 SET offer = 20 WHERE id = 13;
UPDATE restaurant_info3 SET offer = 30 WHERE id = 14;
UPDATE restaurant_info3 SET offer = 40 WHERE id = 15;

UPDATE restaurant_info3 SET available_seats = 10 WHERE id = 1;
UPDATE restaurant_info3 SET available_seats = 5 WHERE id = 2;
UPDATE restaurant_info3 SET available_seats = 8 WHERE id = 3;
UPDATE restaurant_info3 SET available_seats = 12 WHERE id = 4;
UPDATE restaurant_info3 SET available_seats = 7 WHERE id = 5;
UPDATE restaurant_info3 SET available_seats = 3 WHERE id = 6;
UPDATE restaurant_info3 SET available_seats = 6 WHERE id = 7;
UPDATE restaurant_info3 SET available_seats = 4 WHERE id = 8;
UPDATE restaurant_info3 SET available_seats = 9 WHERE id = 9;
UPDATE restaurant_info3 SET available_seats = 11 WHERE id = 10;
UPDATE restaurant_info3 SET available_seats = 2 WHERE id = 11;
UPDATE restaurant_info3 SET available_seats = 5 WHERE id = 12;
UPDATE restaurant_info3 SET available_seats = 13 WHERE id = 13;
UPDATE restaurant_info3 SET available_seats = 7 WHERE id = 14;
UPDATE restaurant_info3 SET available_seats = 4 WHERE id = 15;

SELECT * FROM restaurant_info3;


CREATE TABLE olympics_info (
    id INT,
    event_name VARCHAR(80),
    event_type ENUM('indoor', 'outdoor'),
    venue VARCHAR(90),
    max_audience INT,
    host_city VARCHAR(50),
    total_budget INT,
    entry_fee INT,
    sport_category VARCHAR(90)
);

ALTER TABLE olympics_info ADD CONSTRAINT id UNIQUE(id);
ALTER TABLE olympics_info MODIFY COLUMN host_city VARCHAR(50) NOT NULL;
ALTER TABLE olympics_info MODIFY COLUMN total_budget INT NOT NULL;
ALTER TABLE olympics_info MODIFY COLUMN sport_category VARCHAR(90) NOT NULL;

ALTER TABLE olympics_info MODIFY COLUMN event_type ENUM('indoor', 'outdoor') NOT NULL;
ALTER TABLE olympics_info ADD CONSTRAINT budget CHECK(total_budget > 100000);
ALTER TABLE olympics_info ADD CONSTRAINT audience CHECK(max_audience > 1000);

INSERT INTO olympics_info VALUES (1, 'Olympic Opening Ceremony', 'outdoor', 'National Stadium', 80000, 'Paris', 500000000, 200, 'Athletics');
INSERT INTO olympics_info VALUES (2, 'Swimming Finals', 'indoor', 'Aquatic Dome', 15000, 'Los Angeles', 200000000, 150, 'Swimming');
INSERT INTO olympics_info VALUES (3, 'Basketball Championship', 'indoor', 'City Sports Arena', 20000, 'Tokyo', 300000000, 180, 'Basketball');
INSERT INTO olympics_info VALUES (4, 'Cycling Race', 'outdoor', 'Velodrome Track', 12000, 'London', 250000000, 170, 'Cycling');
INSERT INTO olympics_info VALUES (5, 'Wrestling Finals', 'indoor', 'Combat Arena', 10000, 'Beijing', 180000000, 130, 'Wrestling');
INSERT INTO olympics_info VALUES (6, 'Football World Cup', 'outdoor', 'Grand Arena', 70000, 'Rio', 600000000, 220, 'Football');
INSERT INTO olympics_info VALUES (7, 'Tennis Grand Slam', 'outdoor', 'Center Court', 15000, 'Melbourne', 200000000, 160, 'Tennis');
INSERT INTO olympics_info VALUES (8, 'Hockey Championship', 'outdoor', 'Hockey Stadium', 12000, 'Berlin', 190000000, 140, 'Hockey');
INSERT INTO olympics_info VALUES (9, 'Archery Finals', 'outdoor', 'Archery Park', 8000, 'New Delhi', 150000000, 110, 'Archery');
INSERT INTO olympics_info VALUES (10, 'Gymnastics Competition', 'indoor', 'Gymnastics Hall', 16000, 'Moscow', 210000000, 175, 'Gymnastics');
INSERT INTO olympics_info VALUES (11, 'Weightlifting Championship', 'indoor', 'Power Arena', 11000, 'Seoul', 220000000, 190, 'Weightlifting');
INSERT INTO olympics_info VALUES (12, 'Shooting Finals', 'indoor', 'Target Range', 10000, 'Madrid', 175000000, 120, 'Shooting');
INSERT INTO olympics_info VALUES (13, 'Marathon Event', 'outdoor', 'City Streets', 50000, 'Boston', 280000000, 210, 'Marathon');
INSERT INTO olympics_info VALUES (14, 'Table Tennis Finals', 'indoor', 'Ping Pong Hall', 7000, 'Singapore', 160000000, 100, 'Table Tennis');
INSERT INTO olympics_info VALUES (15, 'Equestrian Showjumping', 'outdoor', 'Horse Arena', 12000, 'Amsterdam', 230000000, 185, 'Equestrian');

ALTER TABLE olympics_info ADD COLUMN sponsor_amount INT;
ALTER TABLE olympics_info ADD COLUMN available_tickets INT;

UPDATE olympics_info SET sponsor_amount = 20000000 WHERE id = 1;
UPDATE olympics_info SET sponsor_amount = 15000000 WHERE id = 2;
UPDATE olympics_info SET sponsor_amount = 18000000 WHERE id = 3;
UPDATE olympics_info SET sponsor_amount = 17000000 WHERE id = 4;
UPDATE olympics_info SET sponsor_amount = 13000000 WHERE id = 5;
UPDATE olympics_info SET sponsor_amount = 22000000 WHERE id = 6;
UPDATE olympics_info SET sponsor_amount = 16000000 WHERE id = 7;
UPDATE olympics_info SET sponsor_amount = 14000000 WHERE id = 8;
UPDATE olympics_info SET sponsor_amount = 11000000 WHERE id = 9;
UPDATE olympics_info SET sponsor_amount = 17500000 WHERE id = 10;
UPDATE olympics_info SET sponsor_amount = 19000000 WHERE id = 11;
UPDATE olympics_info SET sponsor_amount = 12000000 WHERE id = 12;
UPDATE olympics_info SET sponsor_amount = 21000000 WHERE id = 13;
UPDATE olympics_info SET sponsor_amount = 10000000 WHERE id = 14;
UPDATE olympics_info SET sponsor_amount = 18500000 WHERE id = 15;

UPDATE olympics_info SET available_tickets = 5000 WHERE id = 1;
UPDATE olympics_info SET available_tickets = 3000 WHERE id = 2;
UPDATE olympics_info SET available_tickets = 4000 WHERE id = 3;
UPDATE olympics_info SET available_tickets = 3500 WHERE id = 4;
UPDATE olympics_info SET available_tickets = 2500 WHERE id = 5;
UPDATE olympics_info SET available_tickets = 6000 WHERE id = 6;
UPDATE olympics_info SET available_tickets = 3200 WHERE id = 7;
UPDATE olympics_info SET available_tickets = 2800 WHERE id = 8;
UPDATE olympics_info SET available_tickets = 2200 WHERE id = 9;
UPDATE olympics_info SET available_tickets = 4500 WHERE id = 10;
UPDATE olympics_info SET available_tickets = 5000 WHERE id = 11;
UPDATE olympics_info SET available_tickets = 2700 WHERE id = 12;
UPDATE olympics_info SET available_tickets = 5500 WHERE id = 13;
UPDATE olympics_info SET available_tickets = 2100 WHERE id = 14;
UPDATE olympics_info SET available_tickets = 3700 WHERE id = 15;

SELECT * FROM olympics_info;