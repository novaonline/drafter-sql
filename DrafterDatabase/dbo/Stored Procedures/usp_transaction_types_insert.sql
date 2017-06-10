-- =============================================
-- Author:		EQUAGRAINE
-- Create date: 2016-02-11
-- Description:	add transaction type
-- =============================================
CREATE PROCEDURE [dbo].[usp_transaction_types_insert]
	@id int,
	
	@name varchar(50),
	@description text = null,

	@add_dt datetime = null
AS
	INSERT INTO [dbo].[transaction_types] ([id], [name], [description])
	VALUES( @id, @name, @description)
RETURN 0