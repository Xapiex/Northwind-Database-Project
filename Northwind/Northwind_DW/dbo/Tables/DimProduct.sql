CREATE TABLE [dbo].[DimProduct] (
    [ProductKey]   INT            IDENTITY (1, 1) NOT NULL,
    [ProductID]    INT            NOT NULL,
    [ProductName]  NVARCHAR (100) NOT NULL,
    [CategoryName] NVARCHAR (50)  NULL,
    [SupplierName] NVARCHAR (100) NULL,
    [UnitPrice]    MONEY          NULL,
    [Discontinued] BIT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED ([ProductKey] ASC)
);

