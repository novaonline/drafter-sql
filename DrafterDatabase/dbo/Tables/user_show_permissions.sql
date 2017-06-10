CREATE TABLE [dbo].[user_show_permissions] (
    [id]                      INT            IDENTITY (1, 1) NOT NULL,
    [user_id]                 NVARCHAR (128) NOT NULL,
    [add_dt]                  DATETIME       CONSTRAINT [DF_user_show_permissions_add_dt] DEFAULT (getutcdate()) NOT NULL,
    [user_permission_type_id] INT            NOT NULL,
    CONSTRAINT [PK_user_show_permissions] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_user_show_permissions_user_permission_types] FOREIGN KEY ([user_permission_type_id]) REFERENCES [dbo].[user_permission_types] ([id]),
    CONSTRAINT [FK_user_show_permissions_users] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_user_show_permissions_user_id]
    ON [dbo].[user_show_permissions]([user_id] ASC);

