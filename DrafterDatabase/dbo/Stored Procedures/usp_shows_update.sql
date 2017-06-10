

-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-10-02
-- Description:	update show
-- =============================================
CREATE PROCEDURE [dbo].[usp_shows_update]
	@id int,

	@name varchar(50),
	@season int,
	@max_selection int,
	@draft_start_dt datetime = null,
	@draft_end_dt datetime = null,
	@image_path varchar(max) = null,

	-- ignored currently an unmaintainable solution
	@add_dt datetime = null,
	@update_dt datetime = null
AS
	UPDATE [dbo].[shows] 
	SET [name] = @name,
	[season] = @season,
	[draft_start_dt] = @draft_start_dt,
	[draft_end_dt] = @draft_end_dt,
	[max_selection] = @max_selection,
	[image_path] = @image_path,
	[update_dt] = GETUTCDATE()
	WHERE [id] = @id
RETURN 0