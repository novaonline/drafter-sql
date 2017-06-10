-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	insert character transaction
-- =============================================
CREATE PROCEDURE [dbo].[usp_character_transactions_insert]
	@id int = 0,

	@character_id int,
	@show_round_id int,
	@transaction_type_id int,
	-- ignored currently an unmaintainable solution
	@add_dt datetime = null
AS
	INSERT INTO [dbo].[character_transactions] ([character_id], [show_round_id], [transaction_type_id])
	VALUES ( @character_id, @show_round_id, @transaction_type_id)
	SELECT SCOPE_IDENTITY() AS 'generated_id'
RETURN 0