﻿CREATE TABLE [dbo].[Transactions] (
    [Id]              UNIQUEIDENTIFIER NOT NULL,
    [TotalAmount]     DECIMAL (18, 2)  NOT NULL,
    [MovieId]         UNIQUEIDENTIFIER NOT NULL,
    [CustomerId]      UNIQUEIDENTIFIER NOT NULL,
    [TransactionDate] DATETIME2 (7)    NULL,
    [IsReturned]      BIT              NOT NULL,
    CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Transactions_Costumers_CostumerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Transactions_Movies_MovieId] FOREIGN KEY ([MovieId]) REFERENCES [dbo].[Movies] ([Id]) ON DELETE CASCADE
);




GO
CREATE NONCLUSTERED INDEX [IX_Transactions_CostumerId]
    ON [dbo].[Transactions]([CustomerId] ASC);




GO
CREATE NONCLUSTERED INDEX [IX_Transactions_MovieId]
    ON [dbo].[Transactions]([MovieId] ASC);

