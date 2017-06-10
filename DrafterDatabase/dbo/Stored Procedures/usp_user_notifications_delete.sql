-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	delete user notification
-- =============================================
CREATE PROCEDURE [dbo].[usp_user_notifications_delete]
	@id int,
	
	@user_id nvarchar(128) = null,
	@notification_msg text = null,

	@read_dt datetime = null,
	@add_dt datetime = null
AS
	DELETE FROM [dbo].[user_notifications]
	WHERE id = @id
RETURN 0