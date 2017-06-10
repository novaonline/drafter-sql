-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	delete show round
-- =============================================
CREATE PROCEDURE [dbo].[usp_show_rounds_delete]
	@id int = 0,
	
	@show_id int = null,
	@round_number int = null,

	@add_dt datetime = null
AS
	DELETE FROM [dbo].[show_rounds]
	WHERE [id] = @id
RETURN 0