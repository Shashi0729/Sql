use sg;



CREATE TABLE bank_details (
  bank_id INT PRIMARY KEY,
  bank_name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  zip INT NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  website VARCHAR(100) NOT NULL
);

CREATE TABLE cust_details (
  cust_id INT PRIMARY KEY,
  bank_id INT,
  cust_name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  zip INT NOT NULL,
  phone VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,
  FOREIGN KEY (bank_id) REFERENCES bank_details(bank_id)
);

CREATE TABLE loan_details (
  loan_id INT PRIMARY KEY,
  cust_id INT,
  loan_type VARCHAR(255) NOT NULL,
  loan_amount DECIMAL(10, 2) NOT NULL,
  interest_rate DECIMAL(5, 2) NOT NULL,
  loan_term INT NOT NULL,
  loan_status VARCHAR(50) NOT NULL,
  FOREIGN KEY (cust_id) REFERENCES cust_details(cust_id)
);

INSERT INTO bank_details (bank_id, bank_name, address, city, state, zip, phone, email, website)
VALUES
  (1, 'State Bank of India', 'MG Road', 'Bengaluru', 'Karnataka', 560001, '080-12345678', 'sbi@gmail.com', 'sbi.com'),
  (2, 'ICICI Bank', 'MG Road', 'Mumbai', 'Maharashtra', 400001, '022-12345678', 'icici@gmail.com', 'icici.com'),
  (3, 'Axis Bank', 'MG Road', 'Delhi', 'Delhi', 110001, '011-12345678', 'axis@gmail.com', 'axis.com'),
  (4, 'HDFC Bank', 'MG Road', 'Chennai', 'Tamil Nadu', 600001, '044-12345678', 'hdfc@gmail.com', 'hdfc.com'),
  (5, 'Kotak Mahindra Bank', 'MG Road', 'Pune', 'Maharashtra', 411001, '020-12345678', 'kotak@gmail.com', 'kotak.com'),
  (6, 'Yes Bank', 'MG Road', 'Hyderabad', 'Telangana', 500001, '040-12345678', 'yes@gmail.com', 'yes.com'),
  (7, 'IDBI Bank', 'MG Road', 'Kolkata', 'West Bengal', 700001, '033-12345678', 'idbi@gmail.com', 'idbi.com'),
  (8, 'Canara Bank', 'MG Road', 'Bengaluru', 'Karnataka', 560001, '080-12345678', 'canara@gmail.com', 'canara.com'),
  (9, 'Union Bank of India', 'MG Road', 'Mumbai', 'Maharashtra', 400001, '022-12345678', 'union@gmail.com', 'union.com'),
  (10, 'Punjab National Bank', 'MG Road', 'Delhi', 'Delhi', 110001, '011-12345678', 'pnb@gmail.com', 'pnb.com');


INSERT INTO cust_details (cust_id, bank_id, cust_name, address, city, state, zip, phone, email)
VALUES
  (1, 1, 'Ramesh Kumar', 'MG Road', 'Bengaluru', 'Karnataka', 560001, '080-12345678', 'ramesh@email.com'),
  (2, 2, 'Suresh Patel', 'MG Road', 'Mumbai', 'Maharashtra', 400001, '022-12345678', 'suresh@email.com'),
  (3, 3, 'Rajesh Singh', 'MG Road', 'Delhi', 'Delhi', 110001, '011-12345678', 'rajesh@email.com'),
  (4, 4, 'Rahul Gupta', 'MG Road', 'Chennai', 'Tamil Nadu', 600001, '044-12345678', 'rahul@email.com'),
  (5, 5, 'Mohammed Khan', 'MG Road', 'Pune', 'Maharashtra', 411001, '020-12345678', 'mohammed@email.com'),
  (6, 6, 'Srinivas Rao', 'MG Road', 'Hyderabad', 'Telangana', 500001, '040-12345678', 'srinivas@email.com'),
  (7, 7, 'Rajendra Jain', 'MG Road', 'Kolkata', 'West Bengal', 700001, '033-12345678', 'rajendra@email.com'),
  (8, 8, 'Vijay Kumar', 'MG Road', 'Bengaluru', 'Karnataka', 560001, '080-12345678', 'vijay@email.com'),
  (9, 9, 'Sanjay Sharma', 'MG Road', 'Mumbai', 'Maharashtra', 400001, '022-12345678', 'sanjay@email.com'),
  (10, 10, 'Pramod Mehta', 'MG Road', 'Delhi', 'Delhi', 110001, '011-12345678', 'pramod@email.com');
  
  
INSERT INTO loan_details (loan_id, cust_id, loan_type, loan_amount, interest_rate, loan_term, loan_status)
VALUES
  (1, 1, 'Personal Loan', 100000, 12, 36, 'Approved'),
  (2, 2, 'Home Loan', 500000, 10, 120, 'Pending'),
  (3, 3, 'Car Loan', 500000, 12, 60, 'Rejected'),
  (4, 4, 'Education Loan', 200000, 10, 84, 'Approved'),
  (5, 5, 'Personal Loan', 150000, 12, 36, 'Pending'),
  (6, 6, 'Home Loan', 750000, 10, 120, 'Approved'),
  (7, 7, 'Car Loan', 300000, 12, 60, 'Rejected'),
  (8, 8, 'Education Loan', 250000, 10, 84, 'Pending'),
  (9, 9, 'Personal Loan', 120000, 12, 36, 'Approved');
 

select * from loan_details;
INSERT INTO loan_details (loan_id, cust_id, loan_type, loan_amount, interest_rate, loan_term, loan_status)
VALUES
  (10, 10, 'Personal Loan', 100000, 12, 36, 'Approved');


