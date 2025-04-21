--CREATE USERS TABLE
CREATE TABLE users2(
       user_id SERIAL PRIMARY KEY,
	   username VARCHAR(50) NOT NULL,
	   email Varchar(100) UNIQUE,
	   age INT,
	   city VARCHAR(50)
);

-- Retrieve all data
SELECT * FROM users2;

-- INSERTING DATA INTO 'users2' TABLE
INSERT INTO users2(username , email , age , city)
     VALUES('Trivedi' , 'trivedi1@gmail.com', 17 , 'Mumbai'),
	       ('Drivedi' , 'drivedi2@gmail.com' , 18 , 'Delhi'),
		   ('Chaturvedi' , 'chaturvedi1@gmail.com' , 19 , 'Bengaluru'),
		   ('Shukla' , 'shukla1@gmail.com' , 20 , 'Pune'),
		   ('Jha' , 'jha1@gmail.com' , 21 , 'Hyderabad');

--to rename the column name
ALTER TABLE users2
RENAME COLUMN username TO fullname;

--REORDERING TABLE
SELECT * FROM users2 ORDER BY user_id ASC;

--to change column's data type
ALTER TABLE users2
ALTER COLUMN age TYPE smallint;

--to add constraint to column
ALTER TABLE users2
ADD CONSTRAINT age CHECK(age>=17);

--to add constraint to column
ALTER TABLE users2
ALTER COLUMN city SET NOT NULL;

--to change table name
ALTER TABLE users2
RENAME TO customers;

-- VIEW DATA ORDERED BY user_id
SELECT * FROM customers ORDER BY user_id ASC;
