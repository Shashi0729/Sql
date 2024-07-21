
use sg;


CREATE TABLE Customers (
    Customer_ID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZIP INT,
    Phone VARCHAR(20) UNIQUE,
    CHECK (ZIP > 0)
);

CREATE TABLE Orders (
    Order_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Order_Date DATE,
    Total DECIMAL(10, 2),
    Status VARCHAR(255),
    Payment_Method VARCHAR(255),
    Shipping_Address VARCHAR(255),
    Order_Number VARCHAR(20) UNIQUE,
    CHECK (Total > 0)
);

CREATE TABLE Products (
    Product_ID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Description VARCHAR(255),
    Price DECIMAL(10, 2),
    Category VARCHAR(255),
    Stock INT,
    Image VARCHAR(255),
    Product_Code VARCHAR(20) UNIQUE,
    CHECK (Price > 0)
);

CREATE TABLE Employees (
    Employee_ID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Title VARCHAR(255),
    Department VARCHAR(255),
    Hire_Date DATE,
    Salary DECIMAL(10, 2),
    Manager_ID INT,
    Employee_Code VARCHAR(20) UNIQUE,
    CHECK (Salary > 0)
);

CREATE TABLE Suppliers (
    Supplier_ID INT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    ZIP INT,
    Contact_Person VARCHAR(255),
    Supplier_Code VARCHAR(20) UNIQUE,
    CHECK (ZIP > 0)
);

INSERT INTO Customers (Customer_ID, Name, Address, City, State, ZIP, Phone)
VALUES
(1, 'John Doe', '123 Main St', 'Anytown', 'CA', 12345, '123-456-7890'),
(2, 'Jane Smith', '456 Elm St', 'Othertown', 'NY', 67890, '098-765-4321'),
(3, 'Bob Johnson', '789 Oak St', 'Thistown', 'TX', 34567, '555-555-5555'),
(4, 'Maria Rodriguez', '321 Maple St', 'Thatown', 'FL', 89012, '222-222-2222'),
(5, 'David Lee', '901 Pine St', 'Thisville', 'IL', 45678, '333-333-3333'),
(6, 'Emily Chen', '234 Spruce St', 'Other ville', 'GA', 67890, '444-444-4444'),
(7, 'Kevin White', '567 Fir St', 'Therville', 'MI', 34567, '555-555-5565'),
(8, 'Sarah Taylor', '890 Cedar St', 'Thatville', 'OH', 89012, '666-666-6666'),
(9, 'Michael Brown', '345 Walnut St', 'Thisville', 'PA', 45678, '777-777-7777'),
(10, 'Olivia Davis', '678 Pine St', 'Other ville', 'NC', 67890, '888-888-8888');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total, Status, Payment_Method, Shipping_Address, Order_Number)
VALUES
(1, 1, '2022-01-01', 100.00, 'Pending', 'Credit Card', '123 Main St', 'ORD-001'),
(2, 2, '2022-01-15', 50.00, 'Shipped', 'PayPal', '456 Elm St', 'ORD-002'),
(3, 3, '2022-02-01', 200.00, 'Delivered', 'Bank Transfer', '789 Oak St', 'ORD-003'),
(4, 4, '2022-03-01', 150.00, 'Pending', 'Credit Card', '321 Maple St', 'ORD-004'),
(5, 5, '2022-04-01', 300.00, 'Shipped', 'PayPal', '901 Pine St', 'ORD-005'),
(6, 6, '2022-05-01', 250.00, 'Delivered', 'Bank Transfer', '234 Spruce St', 'ORD-006'),
(7, 7, '2022-06-01', 100.00, 'Pending', 'Credit Card', '567 Fir St', 'ORD-007'),
(8, 8, '2022-07-01', 200.00, 'Shipped', 'PayPal', '890 Cedar St', 'ORD-008'),
(9, 9, '2022-08-01', 300.00, 'Delivered', 'Bank Transfer', '345 Walnut St', 'ORD-009'),
(10, 10, '2022-09-01', 250.00, 'Pending', 'Credit Card', '678 Pine St', 'ORD-010');

INSERT INTO Products (Product_ID, Name, Description, Price, Category, Stock, Image, Product_Code)
VALUES
(1, 'Product 1', 'This is product 1', 10.99, 'Category 1', 10, 'image1.jpg', 'PROD-001'),
(2, 'Product 2', 'This is product 2', 20.99, 'Category 2', 20, 'image2.jpg', 'PROD-002'),
(3, 'Product 3', 'This is product 3', 30.99, 'Category 3', 30, 'image3.jpg', 'PROD-003'),
(4, 'Product 4', 'This is product 4', 40.99, 'Category 4', 40, 'image4.jpg', 'PROD-004'),
(5, 'Product 5', 'This is product 5', 50.99, 'Category 5', 50, 'image5.jpg', 'PROD-005'),
(6, 'Product 6', 'This is product 6', 60.99, 'Category 6', 60, 'image6.jpg', 'PROD-006'),
(7, 'Product 7', 'This is product 7', 70.99, 'Category 7', 70, 'image7.jpg', 'PROD-007'),
(8, 'Product 8', 'This is product 8', 80.99, 'Category 8', 80, 'image8.jpg', 'PROD-008'),
(9, 'Product 9', 'This is product 9', 90.99, 'Category 9', 90, 'image9.jpg', 'PROD-009'),
(10, 'Product 10', 'This is product 10', 100.99, 'Category 10', 100, 'image10.jpg', 'PROD-010');

INSERT INTO Employees (Employee_ID, Name, Title, Department, Hire_Date, Salary, Manager_ID, Employee_Code)
VALUES
(1, 'John Doe', 'Manager', 'Sales', '2018-01-01', 50000.00, NULL, 'EMP-001'),
(2, 'Jane Smith', 'Salesperson', 'Sales', '2019-01-01', 40000.00, 1, 'EMP-002'),
(3, 'Bob Johnson', 'Salesperson', 'Sales', '2020-01-01', 35000.00, 1, 'EMP-003'),
(4, 'Maria Rodriguez', 'Customer Service', 'Customer Service', '2018-01-01', 30000.00, NULL, 'EMP-004'),
(5, 'David Lee', 'Customer Service', 'Customer Service', '2019-01-01', 25000.00, 4, 'EMP-005'),
(6, 'Emily Chen', 'Marketing', 'Marketing', '2020-01-01', 40000.00, NULL, 'EMP-006'),
(7, 'Kevin White', 'Marketing', 'Marketing', '2018-01-01', 35000.00, 6, 'EMP-007'),
(8, 'Sarah Taylor', 'HR', 'HR', '2019-01-01', 30000.00, NULL, 'EMP-008'),
(9, 'Michael Brown', 'IT', 'IT', '2020-01-01', 40000.00, NULL, 'EMP-009'),
(10, 'Olivia Davis', 'IT', 'IT', '2018-01-01', 35000.00, 9, 'EMP-010');

INSERT INTO Suppliers (Supplier_ID, Name, Address, City, State, ZIP, Contact_Person, Supplier_Code)
VALUES
(1, 'Supplier 1', '123 Main St', 'Anytown', 'CA', 12345, 'John Doe', 'SUPP-001'),
(2, 'Supplier 2', '456 Elm St', 'Othertown', 'NY', 67890, 'Jane Smith', 'SUPP-002'),
(3, 'Supplier 3', '789 Oak St', 'Thistown', 'TX', 34567, 'Bob Johnson', 'SUPP-003'),
(4, 'Supplier 4', '321 Maple St', 'Thatown', 'FL', 89012, 'Maria Rodriguez', 'SUPP-004'),
(5, 'Supplier 5', '901 Pine St', 'Thisville', 'IL', 45678, 'David Lee', 'SUPP-005'),
(6, 'Supplier 6', '234 Spruce St', 'Other ville', 'GA', 67890, 'Emily Chen', 'SUPP-006'),
(7, 'Supplier 7', '567 Fir St', 'Therville', 'MI', 34567, 'Kevin White', 'SUPP-007'),
(8, 'Supplier 8', '890 Cedar St', 'Thatville', 'OH', 89012, 'Sarah Taylor', 'SUPP-008'),
(9, 'Supplier 9', '345 Walnut St', 'Thisville', 'PA', 45678, 'Michael Brown', 'SUPP-009'),
(10, 'Supplier 10', '678 Pine St', 'Other ville', 'NC', 67890, 'Olivia Davis', 'SUPP-010');

SELECT * FROM Orders WHERE Total = 100.00;

SELECT * FROM Customers WHERE Name = 'John Doe';

SELECT * FROM Products WHERE Category = 'Category 1';

SELECT * FROM Employees WHERE Department = 'Sales';

SELECT * FROM Suppliers WHERE State = 'CA';





SELECT 
    COUNT(*) AS Total_Customers,
    SUM(Customer_ID) AS Sum_Customer_ID,
    AVG(Customer_ID) AS Avg_Customer_ID,
    MAX(Customer_ID) AS Max_Customer_ID,
    MIN(Customer_ID) AS Min_Customer_ID,
    COUNT(DISTINCT Name) AS Total_Unique_Names
FROM Customers;


SELECT 
    COUNT(*) AS Total_Orders,
    SUM(Total) AS Sum_Total,
    AVG(Total) AS Avg_Total,
    MAX(Total) AS Max_Total,
    MIN(Total) AS Min_Total,
    COUNT(DISTINCT Order_Number) AS Total_Unique_Order_Numbers
FROM Orders;


SELECT 
    COUNT(*) AS Total_Products,
    SUM(Price) AS Sum_Price,
    AVG(Price) AS Avg_Price,
    MAX(Price) AS Max_Price,
    MIN(Price) AS Min_Price,
    COUNT(DISTINCT Category) AS Total_Unique_Categories
FROM Products;


SELECT 
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Sum_Salary,
    AVG(Salary) AS Avg_Salary,
    MAX(Salary) AS Max_Salary,
    MIN(Salary) AS Min_Salary,
    COUNT(DISTINCT Department) AS Total_Unique_Departments
FROM Employees;


SELECT 
    COUNT(*) AS Total_Suppliers,
    SUM(ZIP) AS Sum_ZIP,
    AVG(ZIP) AS Avg_ZIP,
    MAX(ZIP) AS Max_ZIP,
    MIN(ZIP) AS Min_ZIP,
    COUNT(DISTINCT State) AS Total_Unique_States
FROM Suppliers;

select * from suppliers;