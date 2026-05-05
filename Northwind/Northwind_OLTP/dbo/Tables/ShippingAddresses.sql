CREATE TABLE [dbo].[ShippingAddresses] (
    [ShipAddressID]  INT            IDENTITY (1, 1) NOT NULL,
    [ShipName]       NVARCHAR (100) NULL,
    [ShipAddress]    NVARCHAR (150) NULL,
    [ShipCity]       NVARCHAR (50)  NULL,
    [ShipRegion]     NVARCHAR (50)  NULL,
    [ShipPostalCode] NVARCHAR (20)  NULL,
    [ShipCountry]    NVARCHAR (50)  NULL,
    CONSTRAINT [PK_ShippingAddresses] PRIMARY KEY CLUSTERED ([ShipAddressID] ASC)
);

