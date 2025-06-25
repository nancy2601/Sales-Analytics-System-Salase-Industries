-- Insert into Customers
INSERT INTO Customers (CustomerID, Name, Email, Phone, City, State, JoinDate) VALUES
(1, 'Amit Kumar', 'amitk@example.com', '9998877661', 'Delhi', 'Delhi', '2024-01-10'),
(2, 'Sneha Sharma', 'snehas@example.com', '9898989898', 'Mumbai', 'Maharashtra', '2023-12-05'),
(3, 'Raj Patel', 'rajp@example.com', '9876543210', 'Ahmedabad', 'Gujarat', '2024-05-12'),
(4, 'Priya Singh', 'priyas@example.com', '9123456789', 'Bangalore', 'Karnataka', '2023-11-22'),
(5, 'Karan Verma', 'karanv@example.com', '9345678912', 'Hyderabad', 'Telangana', '2024-03-15'),
(6, 'Divya Jain', 'divyaj@example.com', '9001122334', 'Kolkata', 'West Bengal', '2024-04-01'),
(7, 'Manoj Mehta', 'manojm@example.com', '9887766554', 'Chennai', 'Tamil Nadu', '2025-01-05'),
(8, 'Anjali Kapoor', 'anjalik@example.com', '9988776655', 'Pune', 'Maharashtra', '2024-02-19'),
(9, 'Ravi Reddy', 'ravir@example.com', '9876123456', 'Secunderabad', 'Telangana', '2023-10-08'),
(10, 'Pooja Nair', 'poojan@example.com', '9823456781', 'Kochi', 'Kerala', '2024-06-10');

-- Insert into Products
INSERT INTO Products (ProductID, ProductName, Category, UnitPrice, StockQuantity) VALUES
(1, 'Toothpaste', 'Personal Care', 45.00, 300),
(2, 'Shampoo', 'Personal Care', 120.00, 150),
(3, 'Rice (5kg)', 'Food Grains', 350.00, 200),
(4, 'Washing Powder', 'Household', 80.00, 500),
(5, 'Cooking Oil (1L)', 'Groceries', 130.00, 250),
(6, 'Detergent Bar', 'Household', 30.00, 450),
(7, 'Biscuits (Pack of 10)', 'Snacks', 90.00, 300),
(8, 'Hand Sanitizer', 'Health', 60.00, 180),
(9, 'Milk (1L)', 'Dairy', 50.00, 400),
(10, 'Tea Powder (500g)', 'Beverages', 180.00, 160);

-- Insert into Sales
INSERT INTO Sales (SaleID, CustomerID, ProductID, SaleDate, QuantitySold, TotalAmount) VALUES
(1, 1, 1, '2024-06-01', 2, 90.00),
(2, 2, 3, '2024-06-02', 1, 350.00),
(3, 3, 5, '2024-06-03', 3, 390.00),
(4, 4, 2, '2024-06-04', 1, 120.00),
(5, 5, 6, '2024-06-05', 4, 120.00),
(6, 6, 4, '2024-06-06', 2, 160.00),
(7, 7, 9, '2024-06-07', 5, 250.00),
(8, 8, 10, '2024-06-08', 1, 180.00),
(9, 9, 8, '2024-06-09', 2, 120.00),
(10, 10, 7, '2024-06-10', 3, 270.00);

-- Insert into SalesAgents
INSERT INTO SalesAgents (AgentID, AgentName, Region, Phone, JoiningDate) VALUES
(1, 'Vikram Rana', 'North', '9990001111', '2023-01-15'),
(2, 'Sonal Joshi', 'West', '9887766555', '2022-12-01'),
(3, 'Arun Pillai', 'South', '9776655443', '2023-03-20'),
(4, 'Reema Das', 'East', '9665544332', '2023-05-11'),
(5, 'Faizan Khan', 'Central', '9554433221', '2024-02-14'),
(6, 'Neha Mehra', 'North-East', '9443322110', '2024-06-01'),
(7, 'Tarun Ahuja', 'West', '9332211009', '2023-07-22'),
(8, 'Lavanya Rao', 'South', '9221100998', '2023-08-30'),
(9, 'Ritesh Gupta', 'North', '9110099887', '2024-01-05'),
(10, 'Meena Yadav', 'East', '9009988776', '2024-03-18');

-- Insert into Agent_Sales
INSERT INTO Agent_Sales (SaleID, AgentID) VALUES
(1, 1), (2, 2), (3, 3), (4, 1), (5, 5),
(6, 4), (7, 6), (8, 3), (9, 2), (10, 7);
