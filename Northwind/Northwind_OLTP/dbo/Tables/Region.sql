CREATE TABLE [dbo].[Region] (
    [RegionID]          INT        IDENTITY (1, 1) NOT NULL,
    [RegionDescription] NCHAR (50) NOT NULL,
    CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([RegionID] ASC)
);

