



-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2017-07-21
-- Description:	Insert user permission
-- =============================================
CREATE PROCEDURE [dbo].[usp_user_character_permissions_insert]
	@user_id nvarchar(128),
	@user_permission_type_id int,
	-- ignored currently an unmaintainable solution
	@add_dt datetime = null
AS
	INSERT INTO [dbo].[user_character_permissions] ([user_id],[user_permission_type_id])
	VALUES (@user_id,@user_permission_type_id)
	SELECT SCOPE_IDENTITY() AS 'generated_id' 
RETURN 0