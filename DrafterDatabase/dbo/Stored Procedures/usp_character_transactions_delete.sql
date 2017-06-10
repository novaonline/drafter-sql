-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	delete character transaction
-- =============================================
CREATE PROCEDURE [dbo].[usp_character_transactions_delete]
	@id int = 0,
	-- ignored currently an unmaintainable solution
	@character_id int = null,
	@show_round_id int = null,
	@transaction_type_id int = null,
	@add_dt datetime = null
AS
	DELETE FROM [dbo].[character_transactions]
	WHERE [id] = @id
RETURN 0