CREATE TABLE [dbo].[Products] (
    [ProductID]       INT            IDENTITY (1, 1) NOT NULL,
    [SupplierID]      INT            NULL,
    [CategoryID]      INT            NULL,
    [ProductName]     NVARCHAR (100) NOT NULL,
    [QuantityPerUnit] NVARCHAR (50)  NULL,
    [UnitPrice]       MONEY          DEFAULT ((0)) NULL,
    [UnitsInStock]    SMALLINT       DEFAULT ((0)) NULL,
    [UnitsOnOrder]    SMALLINT       DEFAULT ((0)) NULL,
    [ReorderLevel]    SMALLINT       DEFAULT ((0)) NULL,
    [Discontinued]    BIT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Categories] ([CategoryID]),
    CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY ([SupplierID]) REFERENCES [dbo].[Suppliers] ([SupplierID])
);

