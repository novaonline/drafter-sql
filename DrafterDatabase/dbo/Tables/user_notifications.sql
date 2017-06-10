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


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'notifications for each user',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'user_notifications',
    @level2type = NULL,
    @level2name = NULL