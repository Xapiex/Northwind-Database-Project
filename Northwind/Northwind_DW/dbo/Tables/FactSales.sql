CREATE TABLE [dbo].[FactSales] (
    [SalesKey]     INT      IDENTITY (1, 1) NOT NULL,
    [DateKey]      INT      NOT NULL,
    [CustomerKey]  INT      NOT NULL,
    [ProductKey]   INT      NOT NULL,
    [EmployeeKey]  INT      NOT NULL,
    [GeographyKey] INT      NOT NULL,
    [OrderID]      INT      NOT NULL,
    [Quantity]     SMALLINT NOT NULL,
    [UnitPrice]    MONEY    NOT NULL,
    [Discount]     REAL     NOT NULL,
    [Freight]      MONEY    NOT NULL,
    [Revenue]      MONEY    NOT NULL,
    CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED ([SalesKey] ASC),
    CONSTRAINT [FK_Fact_Customer] FOREIGN KEY ([CustomerKey]) REFERENCES [dbo].[DimCustomer] ([CustomerKey]),
    CONSTRAINT [FK_Fact_Date] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_Fact_Employee] FOREIGN KEY ([EmployeeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_Fact_Geography] FOREIGN KEY ([GeographyKey]) REFERENCES [dbo].[DimGeography] ([GeographyKey]),
    CONSTRAINT [FK_Fact_Product] FOREIGN KEY ([ProductKey]) REFERENCES [dbo].[DimProduct] ([ProductKey])
);

