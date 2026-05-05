CREATE TABLE [dbo].[Suppliers] (
    [SupplierID]   INT            IDENTITY (1, 1) NOT NULL,
    [CompanyName]  NVARCHAR (100) NOT NULL,
    [ContactName]  NVARCHAR (100) NULL,
    [ContactTitle] NVARCHAR (50)  NULL,
    [Address]      NVARCHAR (150) NULL,
    [City]         NVARCHAR (50)  NULL,
    [PostalCode]   NVARCHAR (20)  NULL,
    [Country]      NVARCHAR (50)  NULL,
    [Phone]        NVARCHAR (30)  NULL,
    [Fax]          NVARCHAR (30)  NULL,
    [HomePage]     NVARCHAR (255) NULL,
    CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierID] ASC)
);

