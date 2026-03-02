USE SmartShopDB;
GO

-- 1. Branches 
INSERT INTO Branches (BranchName, Location) VALUES 
('Colombo Main', 'No 10, Galle Road, Colombo 03'),
('Kandy Branch', 'No 45, Dalada Veediya, Kandy'),
('Galle Branch', 'No 12, Main Street, Galle');

-- 2. Customers 
INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES 
('Nimal', 'Perera', 'nimal.p@email.com', '0771112222'),
('Kamal', 'Silva', 'kamal.s@email.com', '0712223333'),
('Sunil', 'Fernando', 'sunil.f@email.com', '0753334444');

-- 3. Products 
INSERT INTO Products (ProductName, Category, Price, StockQuantity) VALUES 
('Samsung Galaxy S23', 'Electronics', 250000.00, 50),
('Dell Inspiron 15', 'Electronics', 180000.00, 30),
('Sofa Set', 'Furniture', 120000.00, 10),
('Office Chair', 'Furniture', 25000.00, 40),
('Wireless Mouse', 'Accessories', 3500.00, 100);

-- 4. Orders 
INSERT INTO Orders (CustomerID, BranchID, OrderDate, TotalAmount) VALUES 
(1, 1, '2023-10-01 10:30:00', 253500.00), -- Nimal Colombo 
(2, 2, '2023-10-02 14:15:00', 180000.00), -- Kamal Kandy 
(3, 1, '2023-10-05 09:45:00', 145000.00); -- Sunil Colombo 

-- 5. Order Details 
-- Nimal 
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES 
(1, 1, 1, 250000.00),
(1, 5, 1, 3500.00);

-- Kamal 
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES 
(2, 2, 1, 180000.00);

-- Sunil 
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES 
(3, 3, 1, 120000.00),
(3, 4, 1, 25000.00);