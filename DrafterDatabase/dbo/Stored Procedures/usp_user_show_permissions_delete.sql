




-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2017-01-21
-- Description:	delete user permission
-- =============================================
CREATE PROCEDURE [dbo].[usp_user_show_permissions_delete]
	@id int = null,
	@user_id nvarchar(128) = null,
	@add_dt datetime = null,
	@user_permission_type_id int = null
AS
	DELETE FROM [dbo].[user_show_permissions] 
	WHERE [id] = @id
RETURN 0