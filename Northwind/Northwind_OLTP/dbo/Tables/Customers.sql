CREATE TABLE [dbo].[Customers] (
    [CustomerID]   INT            IDENTITY (1, 1) NOT NULL,
    [CompanyName]  NVARCHAR (100) NOT NULL,
    [ContactName]  NVARCHAR (100) NULL,
    [ContactTitle] NVARCHAR (50)  NULL,
    [Address]      NVARCHAR (150) NULL,
    [City]         NVARCHAR (50)  NULL,
    [PostalCode]   NVARCHAR (20)  NULL,
    [Country]      NVARCHAR (50)  NULL,
    [Phone]        NVARCHAR (30)  NULL,
    [Fax]          NVARCHAR (30)  NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

