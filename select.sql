-- Active: 1748232154750@@127.0.0.1@5432@test
CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    email VARCHAR(100) UNIQUE NOT NULL,
    grade CHAR(10) DEFAULT 'F',
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    dob DATE,
    blood_Group CHAR(10) CHECK (blood_group IN ('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-')),
    address TEXT NOT NULL,
    phone VARCHAR(50) UNIQUE NOT NULL

)



INSERT INTO students (full_name, age, email, grade, dob, blood_group, address, phone) 
VALUES
('Alice Smith', 21, 'alice.smith@example.com', 'B', '2002-08-12', 'A+', '456 Elm St, Springfield, USA', '9876543210'),
('Bob Johnson', 22, 'bob.johnson@example.com', 'C', '2001-03-25', 'B-', '789 Maple Ave, Metropolis, USA', '4567891230'),
('Charlie Brown', 19, 'charlie.brown@example.com', 'A', '2004-06-30', 'O-', '321 Oak St, Smallville, USA', '3216549870'),
('Diana Prince', 23, 'diana.prince@example.com', 'B', '2000-11-20', 'AB+', '654 Pine Rd, Gotham, USA', '7418529630'),
('Ethan Hunt', 20, 'ethan.hunt@example.com', 'C', '2003-01-10', 'A-', '159 Cedar Blvd, Star City, USA', '8529637410'),
('Fiona Gallagher', 21, 'fiona.g@example.com', 'A', '2002-07-18', 'B+', '753 Birch Ln, Riverdale, USA', '9638527410'),
('George O’Malley', 18, 'george.o@example.com', 'B', '2005-04-14', 'O+', '987 Willow Way, Central City, USA', '7894561230'),
('Hannah Montana', 22, 'hannah.m@example.com', 'A', '2001-09-02', 'AB-', '258 Aspen Ct, Hill Valley, USA', '1472583690'),
('Ian Somerhalder', 20, 'ian.s@example.com', 'C', '2003-12-05', 'A+', '147 Redwood Dr, Mystic Falls, USA', '3692581470'),
('Jasmine Aladdin', 19, 'jasmine.a@example.com', 'B', '2004-02-28', 'O-', '369 Cherry St, Agrabah, USA', '2581473690');

ALTER TABLE students RENAME COLUMN name TO full_name;


UPDATE students
SET age = 10
WHERE id = 1;

DELETE FROM students
WHERE id = 1;

SELECT * FROM students;

SELECT * FROM students WHERE full_name = 'John Doe'

SELECT * FROM students
WHERE age > 20