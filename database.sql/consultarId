---Quarta Procedure para Consultar cliente por Id
CREATE PROCEDURE uspClienteConsultarPorId
	@IdCliente INT
AS
BEGIN

	SELECT
		IdCliente,
		Nome,
		DataNascimento,
		Sexo,
		LimiteCompra
	FROM
		tblCliente
	WHERE 
		IdCliente = @IdCliente

END
---Essa procedure fara consultar o cliente pelo id informado
