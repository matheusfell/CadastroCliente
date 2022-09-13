---Primeira Procedure para Inserir cliente
CREATE PROCEDURE uspClienteInserir
	@Nome varchar(100),
	@DataNascimento datetime,
	@Sexo bit,
	@LimiteCompra decimal(18,2)
AS
BEGIN
	
	INSERT INTO tblCliente
	(
		Nome,
		DataNascimento,
		Sexo,
		LimiteCompra
	)
	VALUES
	(
		@Nome,
		@DataNascimento,
		@Sexo,
		@LimiteCompra
	)

	SELECT @@IDENTITY AS Retorno

END
