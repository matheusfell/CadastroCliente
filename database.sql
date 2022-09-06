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
