INSERT INTO [dbo].[user_permission_types] ([id], [name], [description], [can_edit], [can_delete], [can_read], [can_create]) VALUES (1, N'creator', N'Someone who can create', 1, 1, 1, 1)
INSERT INTO [dbo].[user_permission_types] ([id], [name], [description], [can_edit], [can_delete], [can_read], [can_create]) VALUES (2, N'editor', N'Someone who can edit', 1, 0, 1, 0)
INSERT INTO [dbo].[user_permission_types] ([id], [name], [description], [can_edit], [can_delete], [can_read], [can_create]) VALUES (3, N'analysis', N'Someone who can get access to all the crazy analytical data', 0, 0, 0, 1)
