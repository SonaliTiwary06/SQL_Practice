--DROP TABLE IF IT ALREADY EXIST 
DROP TABLE IF EXISTS users;

--CREATE USERS TABLE
CREATE TABLE IF NOT EXISTS users(
       user_id SERIAL PRIMARY KEY,
	   username VARCHAR(50) NOT NULL,
	   email Varchar(100) UNIQUE,
	   age INT,
	   city VARCHAR(50)
);

--Retrieves all data from the table 
SELECT * FROM users;

-- INSERTING DATA INTO USERS TABLE
INSERT INTO users(username , email , age , city)
     VALUES('Trivedi' , 'trivedi1@gmail.com', 17 , 'Mumbai'),
	       ('Drivedi' , 'drivedi2@gmail.com' , 18 , 'Delhi'),
		   ('Chaturvedi' , 'chaturvedi1@gmail.com' , 19 , 'Bengaluru'),
		   ('Shukla' , 'shukla1@gmail.com' , 20 , 'Pune'),
		   ('Jha' , 'jha1@gmail.com' , 21 , 'Hyderabad');

-- SELECTING SPECIFIC COLUMNS
SELECT username, age FROM users;

-- UPDATING A SPECIFIC ROW
UPDATE users
SET age=22
WHERE username = 'Shukla';

-- VIEW DATA ORDERED BY user_id
SELECT * FROM users ORDER BY user_id ASC;

-- UPDATING CITY BASED ON AGE CONDITION
UPDATE users
SET city='Chennai'
WHERE age>=21;

--MULTIPLE UPDATION IN ONE ROW AT ONCE
UPDATE users
SET age= 20 , city='Kolkata'
WHERE username='Jha';

-- UPDATE BASED ON PATTERN MATCHING (LIKE operator)
-- '%di' means names that END with 'di' (like Trivedi, Drivedi)
UPDATE users
SET age= age+1
WHERE username LIKE '%di';