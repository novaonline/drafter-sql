CREATE TABLE [dbo].[character_transactions] (
    [id]                  INT      IDENTITY (1, 1) NOT NULL,
    [character_id]        INT      NOT NULL,
    [show_round_id]       INT      NOT NULL,
    [transaction_type_id] INT      NOT NULL,
    [add_dt]              DATETIME DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_character_transactions_characters] FOREIGN KEY ([character_id]) REFERENCES [dbo].[characters] ([id]),
    CONSTRAINT [FK_character_transactions_show_rounds] FOREIGN KEY ([show_round_id]) REFERENCES [dbo].[show_rounds] ([id]),
    CONSTRAINT [FK_character_transactions_transaction_types] FOREIGN KEY ([transaction_type_id]) REFERENCES [dbo].[transaction_types] ([id])
);


GO
CREATE NONCLUSTERED INDEX [IX_character_transactions_character_id]
    ON [dbo].[character_transactions]([show_round_id] ASC, [character_id] ASC);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'an event that has happened to a character',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'character_transactions',
    @level2type = NULL,
    @level2name = NULL