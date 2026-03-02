USE SmartShopDB;
GO

-- 1.(Top-selling products)
SELECT 
    p.ProductName AS 'Product Name', 
    SUM(od.Quantity) AS 'Total Items Sold',
    SUM(od.Quantity * od.UnitPrice) AS 'Total Revenue'
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
 -- Single quotes 
ORDER BY SUM(od.Quantity) DESC;


-- 2.(Sales by Branch)
SELECT 
    b.BranchName AS 'Branch', 
    COUNT(o.OrderID) AS 'Number of Orders',
    SUM(o.TotalAmount) AS 'Total Sales (Rs.)'
FROM Orders o
JOIN Branches b ON o.BranchID = b.BranchID
GROUP BY b.BranchName
--  Single quotes 
ORDER BY SUM(o.TotalAmount) DESC;


-- 3. (Customer Purchases)
SELECT 
    c.FirstName + ' ' + c.LastName AS 'Customer Name',
    o.OrderDate AS 'Date of Purchase',
    o.TotalAmount AS 'Amount Spent'
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY o.OrderDate DESC;