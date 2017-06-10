-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	delete transaction type
-- =============================================
CREATE PROCEDURE [dbo].[usp_transaction_types_delete]
	@id int,
	
	@name varchar(50) = null,
	@description text = null,

	@add_dt datetime = null
AS
	DELETE FROM [dbo].[transaction_types]
	WHERE id = @id
RETURN 0