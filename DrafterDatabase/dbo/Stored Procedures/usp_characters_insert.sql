

-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-10-02
-- Description:	Insert character
-- =============================================
CREATE PROCEDURE [dbo].[usp_characters_insert]
	@name varchar(50),
	@user_id nvarchar(128),
	@show_id int,
	@image_path varchar(max) = null,

	-- ignored currently an unmaintainable solution
	@add_dt datetime = null,
	@update_dt datetime = null

   --@eliminated_dt datetime = null --removed because a seperate sproc will handle this
AS
	INSERT INTO [dbo].[characters] ([name],[user_id],[show_id],[image_path])
	VALUES (@name,@user_id,@show_id,@image_path)
	SELECT SCOPE_IDENTITY() AS 'generated_id' 
RETURN 0