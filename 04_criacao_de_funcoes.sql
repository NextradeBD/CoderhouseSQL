-- FUNÇÃO fn_get_cliente
-- Função para trazer a o nome do cliente a partir do cliente_id
-- Essa função pode ser utiliza-da para otimizar a junção do nome do cliente 
-- com outra tabela queprecise associar o nome do cliente.

USE `dbnextrade`;
DROP function IF EXISTS `fn_get_cliente`;

delimiter $$
create function `fn_get_cliente` (idCliente int)
returns varchar(200)
deterministic
begin
	declare resultado varchar(200);
    -- Realiza a consulta de nome do jogo
	set resultado = (select nome_completo from clientes where cliente_id = idCliente);
	return resultado;
end$$

-- FUNÇÃO fn_idade_cliente
-- Função recebe o cliente_id e retorna a idade do cliente

USE `dbnextrade`;
DROP function IF EXISTS `fn_idade_cliente`;

DELIMITER $$
create function `fn_idade_cliente` (id int)
returns int(4)
deterministic
begin
	declare idade int(4);
    -- calcula da idade do cliente
    set idade = (select round(datediff(current_date(), data_nasc)/365) from clientes where cliente_id = id);
    return idade;
end$$

-- FUNÇÃO fn_tt_vezes_comprado

-- Essa função, chamada tt_vezes_comprado, recebe um parâmetro 
-- idProduto do tipo inteiro (INT) e retorna um valor inteiro (INT).
-- Ela procura quantos registro a id do produto tem na tabela pedidos
-- e nos mostra a quantidade de pedidos efetuados

USE `dbnextrade`;
DROP function IF EXISTS `fn_tt_vezes_comprado`;

DELIMITER $$
create function `fn_tt_vezes_comprado` (idProduto INT)
returns int
deterministic
begin
   declare totalPedidos int;

    -- Use a função COUNT para contar os registros de pedidos com o ID de produto fornecido
    select COUNT(*) into totalPedidos
    from pedidos
    where produto_id = idProduto;
    return totalPedidos;
end$$
