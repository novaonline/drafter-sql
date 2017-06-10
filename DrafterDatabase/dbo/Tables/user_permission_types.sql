CREATE TABLE [dbo].[user_permission_types] (
    [id]          INT          NOT NULL,
    [name]        VARCHAR (50) NOT NULL,
    [description] TEXT         NULL,
    [can_edit]    BIT          DEFAULT ((0)) NOT NULL,
    [can_delete]  BIT          DEFAULT ((0)) NOT NULL,
    [can_read]    BIT          DEFAULT ((0)) NOT NULL,
    [can_create]  BIT          DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'the type of permissions',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'user_permission_types',
    @level2type = NULL,
    @level2name = NULL