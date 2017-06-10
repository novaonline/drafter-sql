-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2017-07-21
-- Description:	Insert user permission
-- =============================================
CREATE PROCEDURE [dbo].[usp_user_show_permissions_insert]
	@user_id nvarchar(128) = null,
	--@show_id int = null, -- The inital plan was to have multiple shows, but it looks like I scaled it down to get out quicker 
	-- TODO: revert and add multiple shows
	@user_permission_type_id int = null,
	@add_dt datetime = null
AS
	INSERT INTO [dbo].[user_show_permissions] ([user_id],[user_permission_type_id])
	VALUES (@user_id,@user_permission_type_id)
	SELECT SCOPE_IDENTITY() AS 'generated_id' 
RETURN 0