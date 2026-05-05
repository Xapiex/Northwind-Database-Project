CREATE TABLE [dbo].[DimCustomer] (
    [CustomerKey]  INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]   INT            NOT NULL,
    [CompanyName]  NVARCHAR (100) NOT NULL,
    [ContactName]  NVARCHAR (100) NULL,
    [ContactTitle] NVARCHAR (50)  NULL,
    [City]         NVARCHAR (50)  NULL,
    [Country]      NVARCHAR (50)  NULL,
    [Phone]        NVARCHAR (30)  NULL,
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);

