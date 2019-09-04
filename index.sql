--  table person
CREATE TABLE PERSON (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL,
  height INTEGER NOT NULL,
  City VARCHAR NOT NULL
  favorite_color VARCHAR NOT NULL
  )

INSERT INTO person 
(name, age, height,city,favorite_color)
VALUES
('Kevin Hernandez',20,173,'Dallas','blue'),
('Rob Johnson', 27, 180, 'Austin', 'gray'),
('madelyn arsenault', 20, 173, 'salt lake', 'blue'),
('Tramy Nguyen', 24, 125, 'LA', 'pink'),
('Trey Waller', 20, 186, 'Arlington', 'gray')

SELECT * FROM person ORDER BY height DESC

SELECT * FROM person ORDER BY height ASC

SELECT * FROM person ORDER BY age DESC

SELECT * FROM person WHERE age > 20

SELECT * FROM person WHERE age = 18

SELECT * FROM person WHERE age < 20 and age > 30

SELECT * FROM person WHERE age != 27

SELECT * FROM person WHERE favorite_color != 'red'

SELECT * FROM person WHERE favorite_color != 'red' and favorite_color != 'blue'

SELECT * FROM person WHERE favorite_color = 'orange' or favorite_color = 'green'

SELECT * FROM person WHERE favorite_color IN ('orange', 'green','blue')

SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple')

--table orders
CREATE TABLE orders 
 (order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(200),
  product_price NUMERIC,
  quantity INTEGER)

INSERT INTO orders
(person_id ,product_name,product_price,quantity)
VALUES 
(12, 'computer', 1199.99, 1),
(15,'jacket',54.99,3),
(20,'pencil',.50,10),
(14,'car',1000000,1),
(10,'water',2.50,4)

SELECT * FROM orders

SELECT SUM(quantity) FROM orders

SELECT SUM(product_price*quantity) FROM orders

SELECT SUM(product_price*quantity) FROM orders where person_id = 14



--table artist
INSERT INTO artist 
(name)
Values
('Night Lovell'),
('Logic'),
('Jcole')

SELECT * FROM artist ORDER BY name DESC LIMIT 10

SELECT * FROM artist ORDER BY name ASC LIMIT 5

SELECT * FROM artist WHERE name Like 'Black%'

SELECT * FROM artist WHERE name Like '%Black%'

--table employee
SELECT first_name, last_name  FROM employee WHERE city = 'Calgary'

SELECT max(birth_date) FROM employee 

SELECT min(birth_date) FROM employee 

SELECT * FROM employee Where reports_to = 2

SELECT count(*) FROM employee Where city = 'Lethbridge'




--table incoice
SELECT count(*) FROM invoice where billing_country = 'USA'
SELECT max(total) FROM invoice 
SELECT min(total) FROM invoice 
SELECT * FROM invoice where total > 5 
SELECT count(*) FROM invoice WHERE billing_state in('TX','CA','AZ')
SELECT avg(total) FROM invoice 
SELECT sum(total) FROM invoice 
