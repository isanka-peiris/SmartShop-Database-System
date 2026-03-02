CREATE DATABASE SmartShopDB;

-- Database 
USE SmartShopDB;
GO

-- 1. Branches Table 
CREATE TABLE Branches (
    BranchID INT PRIMARY KEY IDENTITY(1,1),
    BranchName VARCHAR(100) NOT NULL,
    Location VARCHAR(255)
);

-- 2. Customers Table 
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15)
);

-- 3. Products Table 
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);

-- 4. Orders Table 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    BranchID INT FOREIGN KEY REFERENCES Branches(BranchID),
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10, 2)
);

-- 5. Order Details Table 
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL
);