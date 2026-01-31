-- NOTE:
-- This script is a simulated example created for demonstration purposes only.
-- It does not contain any proprietary or confidential data.

-- Example: Index optimization for large transactional tables

CREATE TABLE Orders (
    OrderID INT IDENTITY PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(10,2)
);

CREATE NONCLUSTERED INDEX IX_Orders_Customer_OrderDate
ON Orders (CustomerID, OrderDate);

-- Optimized query using the index
SELECT 
    CustomerID,
    SUM(TotalAmount) AS TotalSales
FROM Orders
WHERE OrderDate >= '2024-01-01'
GROUP BY CustomerID;
