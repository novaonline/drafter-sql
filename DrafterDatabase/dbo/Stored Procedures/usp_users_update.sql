

-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-10-02
-- Description:	update user
-- =============================================
CREATE PROCEDURE [dbo].[usp_users_update]
	@id nvarchar(128) = 0,

	@first_name varchar(50) =  null,
	@last_name varchar(50) = null,
	@image_path varchar(max) = null,

	-- ignored currently an unmaintainable solution
	@add_dt datetime = null,
	@update_dt datetime = null
AS
	UPDATE [dbo].[users] 
	SET [first_name] = @first_name,
	[last_name] = @last_name,
	[image_path] = @image_path,
	[update_dt] = GETUTCDATE()
	WHERE [id] = @id
RETURN 0