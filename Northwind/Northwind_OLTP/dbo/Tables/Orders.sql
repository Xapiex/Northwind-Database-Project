CREATE TABLE [dbo].[Orders] (
    [OrderID]       INT      IDENTITY (1, 1) NOT NULL,
    [CustomerID]    INT      NULL,
    [EmployeeID]    INT      NULL,
    [ShipVia]       INT      NULL,
    [ShipAddressID] INT      NULL,
    [OrderDate]     DATETIME NULL,
    [RequiredDate]  DATETIME NULL,
    [ShippedDate]   DATETIME NULL,
    [Freight]       MONEY    DEFAULT ((0)) NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID]),
    CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([ShipVia]) REFERENCES [dbo].[Shippers] ([ShipperID]),
    CONSTRAINT [FK_Orders_ShippingAddress] FOREIGN KEY ([ShipAddressID]) REFERENCES [dbo].[ShippingAddresses] ([ShipAddressID])
);

