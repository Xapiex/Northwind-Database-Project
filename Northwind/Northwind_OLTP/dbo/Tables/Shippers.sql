CREATE TABLE [dbo].[Shippers] (
    [ShipperID]   INT            IDENTITY (1, 1) NOT NULL,
    [CompanyName] NVARCHAR (100) NOT NULL,
    [Phone]       NVARCHAR (30)  NULL,
    CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED ([ShipperID] ASC)
);

