CREATE TABLE [dbo].[Jobs] (
    [JobId]   INT            IDENTITY (1, 1) NOT NULL,
    [JobName] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED ([JobId] ASC)
);

