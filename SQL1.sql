CREATE TABLE Studets(
      Student_id SERIAL PRIMARY KEY,
	  Student_name VARCHAR(100) NOT NULL,
	  Admission_date DATE,
	  Student_class NUMERIC,
	  Percentage NUMERIC(2,2)
);

SELECT * FROM Students;


INSERT INTO Students(Student_name,Admission_date,Student_class,Percentage)
            VALUES('Ajit sharma','2016-08-13',5,81.2),
			('Priya desai','2016-07-30',5,83.61),
			('Rajesh kumar','2016-08-18',5,72.13),
			('Sneha patel','2016-07-27',5,69.31),
			('Vikram singh','2016-08-07',5,74.00);
			
ALTER TABLE Studets
RENAME TO Students;

ALTER TABLE Students
ALTER COLUMN Percentage TYPE NUMERIC(5,2);

TRUNCATE TABLE Students;
TRUNCATE TABLE Students RESTART IDENTITY;