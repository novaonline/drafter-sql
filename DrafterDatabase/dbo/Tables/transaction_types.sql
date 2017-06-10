CREATE TABLE [dbo].[transaction_types] (
    [id]          INT          NOT NULL,
    [name]        VARCHAR (50) NOT NULL,
    [description] TEXT         NULL,
    [add_dt]      DATETIME     DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [CK_transaction_types_id] CHECK ([id]>(0))
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'the type of transactions a user can take on a character',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'transaction_types',
    @level2type = NULL,
    @level2name = NULL