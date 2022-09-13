---Segunda Procedure para Alterar cliente
CREATE PROCEDURE usbClienteAlterar
	@IdCliente int,
	@Nome varchar(100),
	@DataNascimento datetime,
	@Sexo bit,
	@LimiteCompra decimal(18,2)
AS
BEGIN

	UPDATE 
		tblCliente
	SET
		Nome = @Nome,
		DataNascimento = @DataNascimento,
		Sexo = @Sexo,
		LimiteCompra = @LimiteCompra
	WHERE
		IdCliente = @IdCliente

	SELECT @IdCliente AS Retorno


END

---Esta Procedure fara com que altere o cadastro do cliente de acordo com o IdCliente informado
