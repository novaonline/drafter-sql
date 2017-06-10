-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	update transaction type
-- =============================================
CREATE PROCEDURE [dbo].[usp_transaction_types_update]
	@id int,
	
	@name varchar(50),
	@description text = null,

	@add_dt datetime = null
AS
	UPDATE [dbo].[transaction_types]
	SET name = @name,
	[description] = @description
	WHERE id = @id
RETURN 0