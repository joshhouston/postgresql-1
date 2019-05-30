--1
CREATE TABLE person ( person_id SERIAL, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) );

-- 2
INSERT INTO person(name, age, height, city, favorite_color) VALUES
('josh', 24, 177, 'dallas', 'green'),
('juice', 24, 180, 'cc', 'blue'),
('CP3', 23, 180, 'VB', 'red'),
('ACE', 23, 177, 'charleston', 'red'),
('Tristan', 24, 177, 'dallas', 'blue')

-- 3
SELECT * FROM person ORDER BY height ASC

-- 4
SELECT * FROM person ORDER BY height DESC

-- 5
SELECT * FROM person ORDER BY age DESC

--6
SELECT * FROM person WHERE age > 20

--7
SELECT * FROM person WHERE age = 18

--8
SELECT * FROM person WHERE age < 20 AND age > 30

--9
SELECT * FROM person WHERE age != 27

--10 
SELECT * FROM person WHERE favorite_color != 'red'

--11
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue'

--12
SELECT * FROM person WHERE favorite_color = 'green' OR favorite_color != 'orange'

--13
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue')

--14
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple')


------ TABLE ORDERS
-- 1
CREATE TABLE orders(person_id INTEGER, product_name VARCHAR(100), product_price INTEGER, quantity INTEGER)

-- 2
INSERT INTO orders(person_id, product_name, product_price, quantity) VALUES
(1,'stuff', 1.99, 349),
(2,'yarn', 2.99, 40),
(1,'keys', 3.99, 3),
(2,'cup', 4.99, 20),
(1,'life', 5.99, 1);

-- 3
SELECT * FROM orders

--4
SELECT SUM(quantity) FROM orders

--5
SELECT SUM(product_price * quantity) FROM orders

-- 6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

------ TABLE artist

-- 1
INSERT INTO artist(name) VALUES
('jadu heart'),
('river tiber'),
('mndsgn')

-- 2
SELECT * FROM artist ORDER BY name desc LIMIT 10

-- 3
SELECT * FROM artist ORDER BY name asc LIMIT 5

-- 4
SELECT * FROM artist WHERE name LIKE '%Black%'

-- 5
SELECT * FROM artist WHERE name LIKE '%Black%'


------ TABLE employee

-- 1
SELECT first_name last_name FROM employee WHERE city LIKE 'Calgary'

-- 2
SELECT * FROM employee ORDER BY birthdate desc LIMIT 1

--3
SELECT * FROM employee ORDER BY birth_date asc LIMIT 1

--4
SELECT * FROM employee WHERE reports_to = 2;

--5
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge'


------ TABLE invoice

--1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA'

-- 2

SELECT * FROM invoice ORDER BY total DESC LIMIT 1

--3
SELECT * FROM invoice ORDER BY total ASC LIMIT 1

--4
SELECT * FROM invoice WHERE total > 5

--5
SELECT COUNT(*) FROM invoice WHERE total < 5

--6

SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ')

--7
SELECT AVG(total) FROM invoice

--8
SELECT SUM(total) FROM invoice