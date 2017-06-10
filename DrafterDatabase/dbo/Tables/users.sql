CREATE TABLE [dbo].[users] (
    [id]         NVARCHAR (128) NOT NULL,
    [first_name] VARCHAR (50)   NULL,
    [last_name]  VARCHAR (50)   NULL,
    [image_path] VARCHAR (MAX)  NULL,
    [add_dt]     DATETIME       CONSTRAINT [DF_users_add_dt] DEFAULT (getutcdate()) NOT NULL,
    [update_dt]  DATETIME       CONSTRAINT [DF_users_update_dt] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'This is the user''s profile. The ID and how user login comes from a different project',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'users',
    @level2type = NULL,
    @level2name = NULL