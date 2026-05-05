CREATE TABLE [dbo].[Employees] (
    [EmployeeID]      INT            IDENTITY (1, 1) NOT NULL,
    [ReportsTo]       INT            NULL,
    [LastName]        NVARCHAR (50)  NOT NULL,
    [FirstName]       NVARCHAR (50)  NOT NULL,
    [Title]           NVARCHAR (50)  NULL,
    [TitleOfCourtesy] NVARCHAR (25)  NULL,
    [BirthDate]       DATETIME       NULL,
    [HireDate]        DATETIME       NULL,
    [Address]         NVARCHAR (150) NULL,
    [City]            NVARCHAR (50)  NULL,
    [PostalCode]      NVARCHAR (20)  NULL,
    [Country]         NVARCHAR (50)  NULL,
    [HomePhone]       NVARCHAR (30)  NULL,
    [Extension]       NVARCHAR (10)  NULL,
    [Notes]           NVARCHAR (MAX) NULL,
    [PhotoPath]       NVARCHAR (255) NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [FK_Employees_ReportsTo] FOREIGN KEY ([ReportsTo]) REFERENCES [dbo].[Employees] ([EmployeeID])
);

