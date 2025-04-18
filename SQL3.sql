-- Create 'users' table
CREATE TABLE users(
            user_id INT PRIMARY KEY,
			name VARCHAR(100) NOT NULL,
			email VARCHAR(50) UNIQUE,
			age INTEGER CHECK (age>=18),
			reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--INSERTING DATA IN TABLE
INSERT INTO users(user_id , name , email , age)
VALUES (1 , 'Sharma' , 'sonali.dtg1@gmail.com' , 20),
       (2 , 'Tiwary' , 'tiwary.dtg1@gmail.com' , 22),
	   (3 , 'Pandey' , 'pandey.dtg1@gmail.com' , 24),
	   (4 , 'Dubey' , 'dubey.dtg1@gmail.com' , 26);

-- Retrieve all data
SELECT * FROM users;

-- Truncate the table and restart identity (PostgreSQL specific)
TRUNCATE TABLE users RESTART IDENTITY;
