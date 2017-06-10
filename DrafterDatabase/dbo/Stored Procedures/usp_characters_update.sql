

-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-10-02
-- Description:	update character
-- =============================================
CREATE PROCEDURE [dbo].[usp_characters_update]
	@id int = 0,

	@name varchar(50),
	@user_id nvarchar(128),
	@show_id int,
	@image_path varchar(max) = null,

	-- ignored currently an unmaintainable solution
	@add_dt datetime = null,
	@update_dt datetime = null
AS
	UPDATE [dbo].[characters] 
	SET [name] = @name,
	[user_id] = @user_id,
	[show_id] = @show_id,
	[image_path] = @image_path
	WHERE [id] = @id
RETURN 0