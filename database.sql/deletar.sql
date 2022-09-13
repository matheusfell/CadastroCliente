---Terceira Procedure para Excluir cliente
CREATE PROCEDURE uspClienteExcluir
	@IdCliente INT
AS
BEGIN	

	DELETE FROM 
		tblCliente
	WHERE 
		IdCliente = @IdCliente

	SELECT @IdCliente AS Retorno

END
---Esta procedure fara com que exclua de acordo com o IdCliente informado
