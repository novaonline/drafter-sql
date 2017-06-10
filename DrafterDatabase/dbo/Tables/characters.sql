CREATE TABLE [dbo].[characters] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [name]       VARCHAR (50)   NOT NULL,
    [image_path] VARCHAR (MAX)  NULL,
    [user_id]    NVARCHAR (128) NOT NULL,
    [show_id]    INT            NOT NULL,
    [add_dt]     DATETIME       CONSTRAINT [DF_characters_add_dt] DEFAULT (getutcdate()) NOT NULL,
    [update_dt]  DATETIME       CONSTRAINT [DF_characters_update_dt] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_characters] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_characters_shows] FOREIGN KEY ([show_id]) REFERENCES [dbo].[shows] ([id]) ON DELETE CASCADE,
    CONSTRAINT [FK_characters_users] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id])
);


GO
CREATE NONCLUSTERED INDEX [IX_characters_user_id]
    ON [dbo].[characters]([user_id] ASC, [add_dt] DESC);


GO
CREATE NONCLUSTERED INDEX [IX_characters_show_id]
    ON [dbo].[characters]([show_id] ASC, [add_dt] DESC);

