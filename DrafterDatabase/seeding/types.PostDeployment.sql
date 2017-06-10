/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


-- the commented code below is an example of seeding. We're not going to execute this particular part because...
-- the types will be part of drafter-core as enums.
/*
MERGE INTO [dbo].[transaction_types] AS [Target]
USING (
VALUES (1, N'eliminated', N'Eliminated', N'2017-03-14 00:30:38'), (2, N'revived', N'Revive', N'2017-03-14 00:30:55')
)
AS [Source] ([id], [name], [description], [add_dt])
ON [Target].[id] = [Source].[id]
WHEN MATCHED THEN
UPDATE SET [name] = [Source].[name],
[description] = [Source].[description]
WHEN NOT MATCHED BY TARGET THEN
INSERT ([id], [name], [description], [add_dt])
VALUES ([id], [name], [description], [add_dt]);
*/

MERGE INTO [dbo].[user_permission_types] AS [Target]
USING (
VALUES 
(1, N'creator', N'Someone who can create', 1, 1, 1, 1), 
(2, N'editor', N'Someone who can edit', 1, 0, 1, 0),
(3, N'analysis', N'Someone who can get access to all the crazy analytical data', 0, 0, 0, 1)
)
AS [Source] ([id], [name], [description], [can_edit], [can_delete], [can_read], [can_create])
ON [Target].[id] = [Source].[id]
WHEN MATCHED THEN
UPDATE SET 
[name] = [Source].[name],
[description] = [Source].[description],
[can_edit] = [Source].[can_edit],
[can_delete] = [Source].[can_delete],
[can_read] = [Source].[can_read],
[can_create] = [Source].[can_create]
WHEN NOT MATCHED BY TARGET THEN
INSERT ([id], [name], [description], [can_edit], [can_delete], [can_read], [can_create])
VALUES ([id], [name], [description], [can_edit], [can_delete], [can_read], [can_create]);