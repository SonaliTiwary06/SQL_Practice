--Creates a Students3 table with the desired columns
CREATE TABLE Students3(
      Student_id INT PRIMARY KEY,
	  Student_name VARCHAR(100) NOT NULL,
	  Admission_date DATE,
	  Student_class NUMERIC,
	  Percentage NUMERIC(5,2)
);

--Retrieves all data from the table
SELECT * FROM Students3;

--Inserts 5 rows of student data.
INSERT INTO Students3(Student_id,Student_name,Admission_date,Student_class,Percentage)
            VALUES(101,'Ajit sharma','2016-08-13',5,81.2),
			(102,'Priya desai','2016-07-30',5,83.61),
			(103,'Rajesh kumar','2016-08-18',5,72.13),
			(104,'Sneha patel','2016-07-27',5,69.31),
			(105,'Vikram singh','2016-08-07',5,74.00);

--Deletes the record with Student_id = 105 (Vikram Singh).
DELETE FROM Students3
WHERE Student_id=105;

--Removes the Student_class column from the table
ALTER TABLE Students3
DROP COLUMN Student_class;


			