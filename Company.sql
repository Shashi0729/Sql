CREATE DATABASE Company;

USE Company;

CREATE TABLE Employee (
    Id int,
    emp_name VARCHAR(50),
    emp_id INT,
    emp_dept VARCHAR(50),
    emp_sal DECIMAL(10),
    emp_mng boolean,
    emp_mng_name VARCHAR(50),
    mgr_id INT,
    emp_exp INT
);
INSERT INTO Employee (emp_name, emp_dept, emp_sal, emp_mng, emp_mng_name, mgr_id, emp_exp)
VALUES
    ('Aditya Sharma', 'Sales', 50000.00, 301, 'Priya Chopra', 301, 5),
    ('Priya Chopra', 'Sales', 60000.00, NULL, NULL, NULL, 10),
    ('Arjun Singh', 'IT', 55000.00, 302, 'Raj Malhotra', 302, 3),
    ('Riya Gupta', 'HR', 45000.00, 303, 'Amit Patel', 303, 2),
    ('Amit Patel', 'HR', 50000.00, NULL, NULL, NULL, 7),
    ('Raj Malhotra', 'IT', 58000.00, NULL, NULL, NULL, 8),
    ('Neha Kapoor', 'Marketing', 48000.00, 304, 'Isha Sharma', 304, 4),
    ('Isha Sharma', 'Marketing', 52000.00, NULL, NULL, NULL, 6),
    ('Veer Mehta', 'Finance', 53000.00, 305, 'Pooja Saxena', 305, 4),
    ('Pooja Saxena', 'Finance', 57000.00, NULL, NULL, NULL, 9),
    ('Nisha Agarwal', 'Operations', 47000.00, 306, 'Aaditya Varma', 306, 3),
    ('Aaditya Varma', 'Operations', 51000.00, NULL, NULL, NULL, 6),
    ('Aryan Joshi', 'IT', 54000.00, 302, 'Raj Malhotra', 302, 5),
    ('Ishita Dutta', 'HR', 46000.00, 303, 'Amit Patel', 303, 1),
    ('Karan Oberoi', 'Sales', 49000.00, 301, 'Priya Chopra', 301, 2),
    ('Anjali Mathur', 'Marketing', 47500.00, 304, 'Isha Sharma', 304, 3),
    ('Rohan Kapoor', 'Finance', 52500.00, 305, 'Pooja Saxena', 305, 2),
    ('Aarti Sharma', 'Operations', 48500.00, 306, 'Aaditya Varma', 306, 1),
    ('Arjun Sharma', 'IT', 53500.00, 302, 'Raj Malhotra', 302, 4),
    ('Priti Chopra', 'HR', 45500.00, 303, 'Amit Patel', 303, 1);

