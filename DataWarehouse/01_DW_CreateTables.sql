-- =============================================
-- NORTHWIND DW DESIGN
-- Author: [Xavier Montero]
-- Description: Creacion de modelo dimensional (estrella o copo de nieve)
-- =============================================

CREATE DATABASE Northwind_DW;
GO

USE Northwind_DW;
GO

-- ---------------------------------------------
-- DimDate: generated from order dates
-- ---------------------------------------------
CREATE TABLE DimDate (
    DateKey         INT             NOT NULL,
    FullDate        DATE            NOT NULL,
    Year            INT             NOT NULL,
    Quarter         INT             NOT NULL,
    Month           INT             NOT NULL,
    MonthName       NVARCHAR(20)    NOT NULL,
    Day             INT             NOT NULL,
    DayOfWeek       INT             NOT NULL,
    DayName         NVARCHAR(20)    NOT NULL,
    IsWeekend       BIT             NOT NULL,
    CONSTRAINT PK_DimDate PRIMARY KEY (DateKey)
);
GO

-- ---------------------------------------------
-- DimCustomer: flattened from Customers
-- ---------------------------------------------
CREATE TABLE DimCustomer (
    CustomerKey     INT             NOT NULL IDENTITY(1,1),
    CustomerID      INT             NOT NULL,
    CompanyName     NVARCHAR(100)   NOT NULL,
    ContactName     NVARCHAR(100)   NULL,
    ContactTitle    NVARCHAR(50)    NULL,
    City            NVARCHAR(50)    NULL,
    Country         NVARCHAR(50)    NULL,
    Phone           NVARCHAR(30)    NULL,
    CONSTRAINT PK_DimCustomer PRIMARY KEY (CustomerKey)
);
GO

-- ---------------------------------------------
-- DimProduct: flattened from Products + Categories
-- ---------------------------------------------
CREATE TABLE DimProduct (
    ProductKey      INT             NOT NULL IDENTITY(1,1),
    ProductID       INT             NOT NULL,
    ProductName     NVARCHAR(100)   NOT NULL,
    CategoryName    NVARCHAR(50)    NULL,
    SupplierName    NVARCHAR(100)   NULL,
    UnitPrice       MONEY           NULL,
    Discontinued    BIT             NOT NULL DEFAULT 0,
    CONSTRAINT PK_DimProduct PRIMARY KEY (ProductKey)
);
GO

-- ---------------------------------------------
-- DimEmployee: flattened from Employees
-- ---------------------------------------------
CREATE TABLE DimEmployee (
    EmployeeKey     INT             NOT NULL IDENTITY(1,1),
    EmployeeID      INT             NOT NULL,
    FullName        NVARCHAR(100)   NOT NULL,
    Title           NVARCHAR(50)    NULL,
    City            NVARCHAR(50)    NULL,
    Country         NVARCHAR(50)    NULL,
    ReportsToName   NVARCHAR(100)   NULL,
    CONSTRAINT PK_DimEmployee PRIMARY KEY (EmployeeKey)
);
GO

-- ---------------------------------------------
-- DimGeography: flattened from ShippingAddresses
-- ---------------------------------------------
CREATE TABLE DimGeography (
    GeographyKey    INT             NOT NULL IDENTITY(1,1),
    ShipCity        NVARCHAR(50)    NULL,
    ShipRegion      NVARCHAR(50)    NULL,
    ShipCountry     NVARCHAR(50)    NULL,
    ShipPostalCode  NVARCHAR(20)    NULL,
    CONSTRAINT PK_DimGeography PRIMARY KEY (GeographyKey)
);
GO

-- ---------------------------------------------
-- FactSales: one row per order line item
-- ---------------------------------------------
CREATE TABLE FactSales (
    SalesKey        INT             NOT NULL IDENTITY(1,1),
    DateKey         INT             NOT NULL,
    CustomerKey     INT             NOT NULL,
    ProductKey      INT             NOT NULL,
    EmployeeKey     INT             NOT NULL,
    GeographyKey    INT             NOT NULL,
    OrderID         INT             NOT NULL,
    Quantity        SMALLINT        NOT NULL,
    UnitPrice       MONEY           NOT NULL,
    Discount        REAL            NOT NULL,
    Freight         MONEY           NOT NULL,
    Revenue         MONEY           NOT NULL,
    CONSTRAINT PK_FactSales PRIMARY KEY (SalesKey),
    CONSTRAINT FK_Fact_Date      
        FOREIGN KEY (DateKey)       REFERENCES DimDate(DateKey),
    CONSTRAINT FK_Fact_Customer  
        FOREIGN KEY (CustomerKey)   REFERENCES DimCustomer(CustomerKey),
    CONSTRAINT FK_Fact_Product   
        FOREIGN KEY (ProductKey)    REFERENCES DimProduct(ProductKey),
    CONSTRAINT FK_Fact_Employee  
        FOREIGN KEY (EmployeeKey)   REFERENCES DimEmployee(EmployeeKey),
    CONSTRAINT FK_Fact_Geography 
        FOREIGN KEY (GeographyKey)  REFERENCES DimGeography(GeographyKey)
);
GO