-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	insert user notification
-- =============================================
CREATE PROCEDURE [dbo].[usp_user_notifications_insert]
	@id int = null,
	
	@user_id nvarchar(128),
	@notification_msg text,

	@read_dt datetime = null,
	@add_dt datetime = null
AS
	INSERT INTO [dbo].[user_notifications] ([user_id], [notification_msg])
	VALUES (@user_id,@notification_msg)
	SELECT SCOPE_IDENTITY() AS 'generated_id' 
RETURN 0