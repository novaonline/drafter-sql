-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	insert show round
-- =============================================
CREATE PROCEDURE [dbo].[usp_show_rounds_insert]
	@id int = 0,
	
	@show_id int,
	@round_number int,

	@add_dt datetime = null
AS
	INSERT INTO [dbo].[show_rounds] ([show_id], [round_number])
	VALUES (@show_id,@round_number)
	SELECT SCOPE_IDENTITY() AS 'generated_id' 
RETURN 0