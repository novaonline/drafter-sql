CREATE TABLE [dbo].[user_notifications] (
    [id]               INT            IDENTITY (1, 1) NOT NULL,
    [user_id]          NVARCHAR (128) NOT NULL,
    [notification_msg] TEXT           NOT NULL,
    [add_dt]           DATETIME       DEFAULT (getutcdate()) NOT NULL,
    [read_dt]          DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_user_notifications_users] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id])
);


GO
CREATE NONCLUSTERED INDEX [IX_user_notifications_user_id]
    ON [dbo].[user_notifications]([user_id] ASC);

