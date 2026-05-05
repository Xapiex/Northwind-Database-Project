CREATE TABLE [dbo].[DimEmployee] (
    [EmployeeKey]   INT            IDENTITY (1, 1) NOT NULL,
    [EmployeeID]    INT            NOT NULL,
    [FullName]      NVARCHAR (100) NOT NULL,
    [Title]         NVARCHAR (50)  NULL,
    [City]          NVARCHAR (50)  NULL,
    [Country]       NVARCHAR (50)  NULL,
    [ReportsToName] NVARCHAR (100) NULL,
    CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED ([EmployeeKey] ASC)
);

