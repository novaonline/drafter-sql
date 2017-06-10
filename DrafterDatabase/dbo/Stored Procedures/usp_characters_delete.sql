-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2017-01-07
-- Description:	delete character
-- =============================================
CREATE PROCEDURE [dbo].[usp_characters_delete]
	@id int,
	
	-- ignored currently an unmaintainable solution
	@name varchar(50) = null, 
	@user_id nvarchar(128) = null,
	@show_id int = null,
	@image_path varchar(max) = null,
	@add_dt datetime = null,
	@update_dt datetime = null
AS
	DELETE FROM [dbo].[characters] 
	WHERE [id] = @id
RETURN 0