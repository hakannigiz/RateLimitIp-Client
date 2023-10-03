CREATE TABLE [dbo].[Products] (
    [ProductId]    INT             IDENTITY (1, 1) NOT NULL,
    [ProductName]  NVARCHAR (MAX)  NULL,
    [ProductPrice] DECIMAL (18, 2) NOT NULL,
    [ProductStock] INT             NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId] ASC)
);

