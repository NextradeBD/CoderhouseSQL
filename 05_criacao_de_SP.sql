
-- CRIANDO SP PARA ORDENAR A TABELA clientes DE ACORDO COM A COLUNA DESEJADA E SE É ASC ou DESC

DELIMITER $$
CREATE PROCEDURE `sp_get_clientes_order`(IN campo CHAR(20), IN orderDirection CHAR(4))
BEGIN
	-- Verifique se o campo não está em branco
	IF campo <> '' THEN
		-- Concatenar a cláusula ORDER BY com a direção de ordenação
		SET @cliente_order = CONCAT('ORDER BY ', campo, ' ', orderDirection);
	-- Caso contrário, não faça nada
	ELSE
		SET @cliente_order = '';
	END IF;

	-- Montar a consulta SQL
	SET @clausula = CONCAT('SELECT * FROM clientes ', @cliente_order);

	-- Preparar e executar a consulta SQL
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END$$



-- Stored Procedures de inserção e exclusão

USE dbnextrade;
DROP procedure IF EXISTS sp_inserir_fabricante;
DROP procedure IF EXISTS sp_excluir_fabricante;

DELIMITER $$

-- Stored Procedure para inserir um registro na tabela fabricantes

CREATE PROCEDURE sp_inserir_fabricante(
    IN acao CHAR(10), -- Ação: 'inserir' 
    IN nomeFabricante CHAR(100),
    IN informacoes CHAR(100),
    IN tel CHAR(12),
    IN email CHAR(100))
BEGIN
    IF nomeFabricante = '' OR informacoes = '' OR tel = '' OR email = '' THEN
        -- Se algum dos parâmetros estiver vazio, mostre uma mensagem de erro.
        SELECT 'ERRO: não foi possível criar o produto indicado';
    ELSE
        -- Caso contrário, insira os parâmetros como um novo registro na tabela.
        INSERT INTO fabricantes (nome_fabricante, info, telefone, email)
        VALUES (nomeFabricante, informacoes, tel, email);
        -- Se a inserção for bem-sucedida, selecione os dados inseridos.
        SELECT * FROM fabricantes ORDER BY fabricante_id DESC;
    END IF;
END$$



-- Stored Procedure para excluir um registro na tabela fabricantes
CREATE PROCEDURE sp_excluir_fabricante(
    IN acao CHAR(10), -- Ação: 'excluir' 
    IN fabricante_id INT) -- ID do fabricante para excluir
BEGIN
    IF fabricante_id IS NULL THEN
        -- Se o ID do fabricante estiver ausente, mostre uma mensagem de erro.
        SELECT 'ERRO: informe o ID do fabricante para excluir.';
    ELSE
        -- Caso contrário, exclua o registro com base no fabricante_id.
        SET @deletar = CONCAT("DELETE FROM fabricantes WHERE fabricante_id = ", fabricante_id);
        PREPARE runSQL FROM @deletar;
        EXECUTE runSQL;
        DEALLOCATE PREPARE runSQL;
        -- Se a exclusão for bem-sucedida, selecione uma mensagem de sucesso.
        SELECT 'Registro excluído com sucesso.';
    END IF;
END$$
