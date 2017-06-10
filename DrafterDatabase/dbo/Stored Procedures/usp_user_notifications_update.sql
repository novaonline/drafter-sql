-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	updates the read_dt
-- =============================================
CREATE PROCEDURE [dbo].[usp_user_notifications_update]
	@id int = null,
	
	@user_id nvarchar(128),
	@notification_msg text = null,
	@read_dt datetime = null,

	@add_dt datetime = null
AS
	UPDATE[dbo].[user_notifications] 
	SET [read_dt] = @read_dt --better be UTC Time!
	WHERE id = id
RETURN 0