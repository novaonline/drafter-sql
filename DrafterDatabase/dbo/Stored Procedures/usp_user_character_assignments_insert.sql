CREATE PROCEDURE [dbo].[usp_user_character_assignments_insert]
	@id int = null,
	@user_id nvarchar(128) = null,
	@character_id int = null,
	@add_dt datetime = null
AS
	INSERT INTO [user_character_assignments] ([user_id],[character_id])
	VALUES(@user_id,@character_id)
	SELECT SCOPE_IDENTITY() AS 'generated_id' 
RETURN 0