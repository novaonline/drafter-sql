


-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2017-01-07
-- Description:	delete show
-- =============================================
CREATE PROCEDURE [dbo].[usp_shows_delete]
	@id int,

	-- ignored currently an unmaintainable solution
	@name varchar(50) = null,
	@season int = null,
	@max_selection int = null,
	@draft_start_dt datetime = null,
	@draft_end_dt datetime = null,
	@image_path varchar(max) = null,
	@add_dt datetime = null,
	@update_dt datetime = null

AS
	DELETE FROM [dbo].[shows] 
	WHERE [id] = @id
RETURN 0