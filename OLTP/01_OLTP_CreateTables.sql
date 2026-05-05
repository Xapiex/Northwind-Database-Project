-- =============================================
-- NORTHWIND OLTP REDESIGN
-- Author: [Xavier Montero]
-- Description: Modificacion del modelo OLTP normalizado de Northwind
-- =============================================

CREATE DATABASE Northwind_OLTP;
GO

USE Northwind_OLTP;
GO

-- ---------------------------------------------
-- WAVE 1: Independent tables
-- ---------------------------------------------

CREATE TABLE Customers (
    CustomerID    INT             NOT NULL IDENTITY(1,1),
    CompanyName   NVARCHAR(100)   NOT NULL,
    ContactName   NVARCHAR(100)   NULL,
    ContactTitle  NVARCHAR(50)    NULL,
    Address       NVARCHAR(150)   NULL,
    City          NVARCHAR(50)    NULL,
    PostalCode    NVARCHAR(20)    NULL,
    Country       NVARCHAR(50)    NULL,
    Phone         NVARCHAR(30)    NULL,
    Fax           NVARCHAR(30)    NULL,
    CONSTRAINT PK_Customers PRIMARY KEY (CustomerID)
);
GO

CREATE TABLE Categories (
    CategoryID    INT             NOT NULL IDENTITY(1,1),
    CategoryName  NVARCHAR(50)    NOT NULL,
    Description   NVARCHAR(255)   NULL,
    CONSTRAINT PK_Categories PRIMARY KEY (CategoryID)
);
GO

CREATE TABLE Suppliers (
    SupplierID    INT             NOT NULL IDENTITY(1,1),
    CompanyName   NVARCHAR(100)   NOT NULL,
    ContactName   NVARCHAR(100)   NULL,
    ContactTitle  NVARCHAR(50)    NULL,
    Address       NVARCHAR(150)   NULL,
    City          NVARCHAR(50)    NULL,
    PostalCode    NVARCHAR(20)    NULL,
    Country       NVARCHAR(50)    NULL,
    Phone         NVARCHAR(30)    NULL,
    Fax           NVARCHAR(30)    NULL,
    HomePage      NVARCHAR(255)   NULL,
    CONSTRAINT PK_Suppliers PRIMARY KEY (SupplierID)
);
GO

CREATE TABLE Shippers (
    ShipperID     INT             NOT NULL IDENTITY(1,1),
    CompanyName   NVARCHAR(100)   NOT NULL,
    Phone         NVARCHAR(30)    NULL,
    CONSTRAINT PK_Shippers PRIMARY KEY (ShipperID)
);
GO

CREATE TABLE Region (
    RegionID          INT         NOT NULL IDENTITY(1,1),
    RegionDescription NCHAR(50)   NOT NULL,
    CONSTRAINT PK_Region PRIMARY KEY (RegionID)
);
GO

CREATE TABLE Employees (
    EmployeeID      INT             NOT NULL IDENTITY(1,1),
    ReportsTo       INT             NULL,
    LastName        NVARCHAR(50)    NOT NULL,
    FirstName       NVARCHAR(50)    NOT NULL,
    Title           NVARCHAR(50)    NULL,
    TitleOfCourtesy NVARCHAR(25)    NULL,
    BirthDate       DATETIME        NULL,
    HireDate        DATETIME        NULL,
    Address         NVARCHAR(150)   NULL,
    City            NVARCHAR(50)    NULL,
    PostalCode      NVARCHAR(20)    NULL,
    Country         NVARCHAR(50)    NULL,
    HomePhone       NVARCHAR(30)    NULL,
    Extension       NVARCHAR(10)    NULL,
    Notes           NVARCHAR(MAX)   NULL,
    PhotoPath       NVARCHAR(255)   NULL,
    CONSTRAINT PK_Employees PRIMARY KEY (EmployeeID)
);
GO

-- Self-reference added AFTER table exists
ALTER TABLE Employees
    ADD CONSTRAINT FK_Employees_ReportsTo
    FOREIGN KEY (ReportsTo) REFERENCES Employees(EmployeeID);
GO

-- ---------------------------------------------
-- WAVE 2: Tables that depend on wave 1
-- ---------------------------------------------

USE Northwind_OLTP;

GO

CREATE TABLE ShippingAddresses (
    ShipAddressID   INT             NOT NULL IDENTITY(1,1),
    ShipName        NVARCHAR(100)   NULL,
    ShipAddress     NVARCHAR(150)   NULL,
    ShipCity        NVARCHAR(50)    NULL,
    ShipRegion      NVARCHAR(50)    NULL,
    ShipPostalCode  NVARCHAR(20)    NULL,
    ShipCountry     NVARCHAR(50)    NULL,
    CONSTRAINT PK_ShippingAddresses PRIMARY KEY (ShipAddressID)
);
GO

CREATE TABLE Products (
    ProductID       INT             NOT NULL IDENTITY(1,1),
    SupplierID      INT             NULL,
    CategoryID      INT             NULL,
    ProductName     NVARCHAR(100)   NOT NULL,
    QuantityPerUnit NVARCHAR(50)    NULL,
    UnitPrice       MONEY           NULL DEFAULT 0,
    UnitsInStock    SMALLINT        NULL DEFAULT 0,
    UnitsOnOrder    SMALLINT        NULL DEFAULT 0,
    ReorderLevel    SMALLINT        NULL DEFAULT 0,
    Discontinued    BIT             NOT NULL DEFAULT 0,
    CONSTRAINT PK_Products      PRIMARY KEY (ProductID),
    CONSTRAINT FK_Products_Suppliers  
        FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    CONSTRAINT FK_Products_Categories 
        FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
GO

CREATE TABLE Territories (
    TerritoryID          NVARCHAR(20)    NOT NULL,
    RegionID             INT             NOT NULL,
    TerritoryDescription NCHAR(50)       NOT NULL,
    CONSTRAINT PK_Territories PRIMARY KEY (TerritoryID),
    CONSTRAINT FK_Territories_Region 
        FOREIGN KEY (RegionID) REFERENCES Region(RegionID)
);
GO

-- ---------------------------------------------
-- WAVE 3: Tables that depend on wave 2
-- ---------------------------------------------
USE Northwind_OLTP;

GO

CREATE TABLE Orders (
    OrderID         INT         NOT NULL IDENTITY(1,1),
    CustomerID      INT         NULL,
    EmployeeID      INT         NULL,
    ShipVia         INT         NULL,
    ShipAddressID   INT         NULL,
    OrderDate       DATETIME    NULL,
    RequiredDate    DATETIME    NULL,
    ShippedDate     DATETIME    NULL,
    Freight         MONEY       NULL DEFAULT 0,
    CONSTRAINT PK_Orders PRIMARY KEY (OrderID),
    CONSTRAINT FK_Orders_Customers       
        FOREIGN KEY (CustomerID)    REFERENCES Customers(CustomerID),
    CONSTRAINT FK_Orders_Employees       
        FOREIGN KEY (EmployeeID)    REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_Orders_Shippers        
        FOREIGN KEY (ShipVia)       REFERENCES Shippers(ShipperID),
    CONSTRAINT FK_Orders_ShippingAddress 
        FOREIGN KEY (ShipAddressID) REFERENCES ShippingAddresses(ShipAddressID)
);
GO

CREATE TABLE EmployeeTerritories (
    EmployeeID  INT             NOT NULL,
    TerritoryID NVARCHAR(20)    NOT NULL,
    CONSTRAINT PK_EmployeeTerritories 
        PRIMARY KEY (EmployeeID, TerritoryID),
    CONSTRAINT FK_EmpTerr_Employees  
        FOREIGN KEY (EmployeeID)  REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_EmpTerr_Territories 
        FOREIGN KEY (TerritoryID) REFERENCES Territories(TerritoryID)
);
GO

-- ---------------------------------------------
-- WAVE 4: Last table — depends on wave 3
-- ---------------------------------------------

CREATE TABLE OrderDetails (
    OrderID     INT         NOT NULL,
    ProductID   INT         NOT NULL,
    UnitPrice   MONEY       NOT NULL DEFAULT 0,
    Quantity    SMALLINT    NOT NULL DEFAULT 1,
    Discount    REAL        NOT NULL DEFAULT 0,
    CONSTRAINT PK_OrderDetails 
        PRIMARY KEY (OrderID, ProductID),
    CONSTRAINT FK_OrderDetails_Orders   
        FOREIGN KEY (OrderID)   REFERENCES Orders(OrderID),
    CONSTRAINT FK_OrderDetails_Products 
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO