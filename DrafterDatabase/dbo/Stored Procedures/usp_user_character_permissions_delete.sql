




-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2017-01-21
-- Description:	delete user permission 
-- =============================================
CREATE PROCEDURE [dbo].[usp_user_character_permissions_delete]
	@id int,
	
	-- ignored currently an unmaintainable solution 
	@user_id nvarchar(128) = null,
	@add_dt datetime,
	@user_permission_type_id int
AS
	DELETE FROM [dbo].[user_character_permissions] 
	WHERE [id] = @id
RETURN 0