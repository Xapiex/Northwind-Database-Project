CREATE TABLE [dbo].[DimGeography] (
    [GeographyKey]   INT           IDENTITY (1, 1) NOT NULL,
    [ShipCity]       NVARCHAR (50) NULL,
    [ShipRegion]     NVARCHAR (50) NULL,
    [ShipCountry]    NVARCHAR (50) NULL,
    [ShipPostalCode] NVARCHAR (20) NULL,
    CONSTRAINT [PK_DimGeography] PRIMARY KEY CLUSTERED ([GeographyKey] ASC)
);

