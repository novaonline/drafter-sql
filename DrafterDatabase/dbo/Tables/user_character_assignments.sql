CREATE TABLE [dbo].[user_character_assignments] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [user_id]      NVARCHAR (128) NOT NULL,
    [character_id] INT            NOT NULL,
    [add_dt]       DATETIME       DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_user_character_assignments_characters] FOREIGN KEY ([character_id]) REFERENCES [dbo].[characters] ([id]),
    CONSTRAINT [FK_user_character_assignments_users] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_user_character_assignments_user_id_character_id]
    ON [dbo].[user_character_assignments]([user_id] ASC, [character_id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_user_character_assignments_character_id]
    ON [dbo].[user_character_assignments]([character_id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_user_character_assignments_user_id]
    ON [dbo].[user_character_assignments]([user_id] ASC);

