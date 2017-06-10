CREATE TABLE [dbo].[show_rounds] (
    [id]           INT      IDENTITY (1, 1) NOT NULL,
    [show_id]      INT      NOT NULL,
    [round_number] INT      NOT NULL,
    [add_dt]       DATETIME DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_show_rounds_show_id] FOREIGN KEY ([show_id]) REFERENCES [dbo].[shows] ([id])
);


GO
CREATE NONCLUSTERED INDEX [IX_show_rounds_show_id]
    ON [dbo].[show_rounds]([show_id] ASC);

