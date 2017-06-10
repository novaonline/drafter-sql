

-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-10-02
-- Description:	Insert user
-- =============================================
CREATE PROCEDURE [dbo].[usp_users_insert]
    @id NVARCHAR (128),
	@first_name varchar(50) = null,
	@last_name varchar(50) = null,
	@image_path varchar(max) = null,

	-- ignored currently an unmaintainable solution
	@add_dt datetime = null,
	@update_dt datetime = null
AS
	INSERT INTO [dbo].[users] ([id], [first_name],[last_name],[image_path])
	VALUES (@id, @first_name,@last_name,@image_path)
RETURN 0