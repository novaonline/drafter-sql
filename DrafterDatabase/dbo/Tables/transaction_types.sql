CREATE TABLE [dbo].[transaction_types] (
    [id]          INT          NOT NULL,
    [name]        VARCHAR (50) NOT NULL,
    [description] TEXT         NULL,
    [add_dt]      DATETIME     DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [CK_transaction_types_id] CHECK ([id]>(0))
);

