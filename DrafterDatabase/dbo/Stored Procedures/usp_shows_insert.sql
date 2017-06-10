

-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-10-02
-- Description:	Insert show
-- =============================================
CREATE PROCEDURE [dbo].[usp_shows_insert]
	@name varchar(50),
	@season int,
	@draft_start_dt datetime = null,
	@draft_end_dt datetime = null,
	@image_path varchar(max) = null,
	@max_selection int = null,
    -- ignored currently an unmaintainable solution
	@add_dt datetime = null,
	@update_dt datetime = null
AS
	INSERT INTO [dbo].[shows] ([name],[season],[image_path],[max_selection],[draft_start_dt], [draft_end_dt])
	VALUES (@name,@season,@image_path,@max_selection,@draft_start_dt,@draft_end_dt)
	SELECT SCOPE_IDENTITY() AS 'generated_id' 
RETURN 0