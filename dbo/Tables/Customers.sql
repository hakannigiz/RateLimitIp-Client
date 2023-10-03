CREATE TABLE [dbo].[Customers] (
    [CustomerId]   INT            IDENTITY (1, 1) NOT NULL,
    [CustomerName] NVARCHAR (MAX) NULL,
    [CustomerCıty] NVARCHAR (MAX) NULL,
    [JobId]        INT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [FK_Customers_Jobs_JobId] FOREIGN KEY ([JobId]) REFERENCES [dbo].[Jobs] ([JobId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Customers_JobId]
    ON [dbo].[Customers]([JobId] ASC);

