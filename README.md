# NexTrade
![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/13405cd3-8c5d-4c83-b680-cfdd47301ced)

 ![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/2fc92dd8-0ea5-4b47-9d39-d5d8adb483d2)

Banco de dados NexTrade


**1-Introdução**

O banco de dados Nextrade foi desenvolvido por Guilherme Simões, Jonatas Barros e Tiago Firmino durante o curso de SQL da Coderhouse.
O objetivo era construir um banco de dados totalmente estruturado e único, que permitisse a manipulação dos dados para geração de relatórios e insights relevantes. Todo o projeto foi realizado utilizando o MySQL Workbench.

**2-Sobre Nextrade**

A NexTrade é uma renomada empresa do setor de comércio eletrônico, especializada em oferecer uma ampla variedade de produtos de alta qualidade aos consumidores. Fundada por três empreendedores visionários, a NexTrade tem como missão proporcionar uma experiência de compra excepcional aos seus clientes.

Atuando em diversos segmentos, como eletrônicos, moda, casa e decoração, saúde e bem-estar, a NexTrade oferece uma plataforma de e-commerce de última geração que se destaca pela 
facilidade de uso e pela personalização. Nossa tecnologia avançada recomenda produtos com base nas preferências individuais de cada cliente, garantindo uma jornada de compras única e 
satisfatória.


**3-Objetivo**

O objetivo era construir um banco de dados totalmente estruturado e único, que permitisse a manipulação dos dados para geração de relatórios e insights relevantes. Todo o projeto foi realizado utilizando o MySQL Workbench.

**4-Situação-problema**

A NexTrade, um ecommerce em rápido crescimento, enfrentava desafios significativos em gerenciar eficientemente suas operações devido ao aumento constante no volume de transações, diversificação de produtos e a necessidade de fornecer uma experiência personalizada aos clientes. 
Diante desses desafios, a NexTrade optou por migrar para um banco de dados relacional para garantir uma estrutura de dados mais organizada.
A adoção de um banco de dados relacional pela NexTrade foi essencial para superar os desafios enfrentados com o crescimento do ecommerce, fornecendo uma estrutura mais robusta, eficiente e segura para o armazenamento e a recuperação de dados, além de possibilitar executar consultas complexas de forma eficiente, reunindo informações de várias tabelas para análises detalhadas. Isso é vital para compreender o comportamento do cliente, gerenciar inventário e otimizar estratégias de preços. Essa mudança permitiu que a empresa mantivesse seu foco na satisfação do cliente, na otimização de processos e no crescimento sustentável. 

**5-Diagrama E-R**

***Figura 1 Schema Nextrade***

 ![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/2f06090b-0e60-4646-8f62-65e22c9c19f5)

**6-Estruturas e Scripts**

**6.1-Tabelas**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/b2abad08-cf16-41bb-9f5f-729c417e70dc)

**Tabela: clientes**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/18f7a3bb-508f-474a-a9f8-e677b8ff6103)

**Tabela: pedidos**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/4e9b2fbc-0462-4682-9834-be70c5aa3d72)
 
**Tabela: entregas**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/33871ee3-0eaf-4484-9189-e36144c09317)

**Tabela: formas_pg**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/62952b62-85a3-43ec-9bf6-0784bb54a6bf)

**Tabela: produtos**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/2f4cb61d-00f2-4eda-85b6-7d7155d9c5cc)

**Tabela: transportadoras**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/7d56d9eb-fbb7-469d-91fd-337cb471bd6f)

**Tabela: fabricantes**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/56263490-3393-499b-82a8-207aa2e8cc87)

**Tabela: categoria**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/d205d7e0-f018-46b7-a3bf-f4a48b0725cb)

**Tabela: região**

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/8d9808ed-000a-40a6-b936-5de99ad76f00)


**6.2-Views**
As seções a seguir descrevem as visualizações incluídas no banco de dados Nextrade.
 
![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/9a7a1eee-3ed9-4ce5-8e08-0cf5188d34ec)

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/032d0f8b-c6a3-4166-b976-74e75fde3881)

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/f41c8fca-cc94-44c0-bae4-409394c2cbe2)

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/e8c724b6-00ea-4e29-bc9e-544c1efdf341)

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/ed0bc488-96e4-4d3a-97bf-ca4f47d3e7f9)

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/7cc14aed-d1f5-4b54-bae0-d0e18357cc9e)

![image](https://github.com/NextradeBD/CoderhouseSQL/assets/152503285/6eea3ec9-cda1-4ffe-a50d-085f8f0d5db2)


**6.3-Store Procedures**

As seções a seguir descrevem os procedimentos armazenados criados no banco de dados Nextrade.

**Procedimento sp_ordenar_clientes**

O procedimento **sp_ordenar_clientes** ordena a tabela de clientes de acordo com a coluna escolhida e o tipo de ordenação: ascendente (ASC) ou decrescente (DESC);
Parâmetros

• **campo:** parâmetro utilizado para escolher a coluna que será ordenada dentro da tabela clientes.

• **ordenar:** parâmetro utilizado para ordenar a tabela de acordo com a coluna escolhida, onde, ordem = ‘ASC’ ou ‘DESC'.

Valores retornados

Essa função retorna todos os registros tabela de clientes, ordenada por ordem decrescente ou ascendente.
 
```DELIMITER $$
CREATE PROCEDURE `sp_ordenar_clientes`(IN campo CHAR(20), IN ordenar CHAR(4))
BEGIN
	-- Verifique se o campo não está em branco
	IF campo <> '' THEN
		-- Concatenar a cláusula ORDER BY com a direção de ordenação
		SET @cliente_ordenar = CONCAT('ORDER BY ', campo, ' ', ordenar);
	-- Caso contrário, não faça nada
	ELSE
		SET @cliente_ordenar = '';
	END IF;
	-- Montar a consulta SQL
	SET @ordem = CONCAT('SELECT * FROM clientes ', @cliente_ordenar);
	-- Preparar e executar a consulta SQL
	PREPARE runSQL FROM @ordem;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END$$
```


**Casos de uso**

Ordenar a tabela "clientes" a partir da coluna "nome_completo" em ordem crescent:

call sp_ordenar_clientes('nome_completo', 'asc');

 

Ordenar a tabela "clientes" a partir da coluna "cidade" em ordem decrescente:

call sp_ordenar_clientes('cidade', 'desc');
 


**Procedimento sp_inserir_ fabricante**

O procedimento **sp_inserir_ fabricante** faz a inserção de um registro dentro da tabela fabricantes.


**Parâmetros**

• **nomeFabricante:** parâmetro para inserir o nome do fabricante;
• **informacoes:** parâmetro para inserir informações sobre o fabricante;
• **tel:** parâmetro para inserir o telefone;
• **email:** parâmetro para inserir o e-mail.

**Valores retornados**
	
	Esse procedimento armazenado insere um novo registro da tabela fabricantes.


 

**Caso de uso**

Inserindo um novo fabricante na tabela fabricantes:

call dbnextrade.sp_inserir_fabricante('topmachine', 'impressoras de alta qualidade', '11987845781', 'topmachine@contato.com');


 


**Procedimento sp_excluir_fabricante**

O procedimento **sp_excluir_fabricante** faz a exclusão de um registro dentro da tabela fabricantes.

Parâmetros

• **fabricante_id:** parâmetro para informar o id do fabricante;

**Valores retornados**
	
	Esse procedimento armazenado elimina um registro específico da tabela fabricantes.

 


**Caso de uso**

Excluindo um registro da tabela fabricantes a partir do fabricante_id:

call dbnextrade.sp_excluir_fabricante(84);

 

**6.4 -Funções**

As seções a seguir descrevem as funções armazenadas incluídas no banco de dados Nextrade.

**Função fn_get_cliente**

A função **fn_get_cliente** traz o nome do cliente a partir de seu cliente_id. Essa função pode ser utiliza-da para otimizar a junção do nome do cliente com outra tabela que precise associar o nome do cliente.

**Parâmetros**

• **idCliente:** O ID do cliente a ser verificado, para listar o nome completo dos clientes, onde, cliente_id = idCliente.

**Valores retornados**
	
	Essa função retorna uma lista com o nome completo dos clientes, pode ser associado a qualquer tabela que permita fazer essa associação com a coluna cliente_id.

 

**Casos de uso**

Consulta simples, fazendo uma busca direta utilizando somente um id específico:

 



Consulta associada a uma tabela: no exemplo a seguir chamamos a função fn_get_cliente associada com a tabela de pedidos para conseguir identificar o nome dos clientes de cada registro de pedido.

 

**Função fn_idade_cliente**

A função **fn_idade_cliente** faz o cálculo da idade do paciente de acordo com a data_nasc: round(datediff(current_date(), data_nasc)/365) from clientes where cliente_id = id).

Parâmetros

• **id:** O ID do cliente a ser verificado, para calcular e trazer a idade do cliente, onde cliente_id = id.

**Valores retornados**
	
	Essa função retorna a idade do paciente.

 


**Casos de uso**

Consulta rápida usando a id de um cliente para saber sua idade:
 
 
Consulta associada a uma tabela: no exemplo a seguir chamamos a função fn_idade_cliente associada com a tabela de clientes, onde não existe a coluna de idade, dessa forma conseguimos listar a idade de todos os clientes na tabela:

 

**Função fn_ tt_vezes_comprado**

A função **fn_ tt_vezes_comprado** procura quantos registro a id do produto tem na tabela pedidos e nos mostra a quantidade de pedidos efetuados.

**Parâmetros**

• **idProduto:** O ID do produto a ser verificado, para calcular e trazer a idade do cliente, onde produto_id = idProduto.

**Valores retornados**

	Essa função retorna a quantidade de vezes que o pedido foi comprado.

 

**Caso de uso**

Consulta rápida usando a id de um produto específico:
 
 
**6.5-Triggers**

As seções a seguir descrevem os gatilhos no banco de dados NexTrade.

**Trigger tr_clientes_add_log**

O trigger **tr_clientes_add_log** cria um novo registro na tabela clientes_add_log toda vez que um novo registro é inserido na tabela clientes.

**Trigger tr_clientes_update_log**

O trigger **tr_clientes_update _log** cria um novo registro na tabela clientes_update_log toda vez que é detectado a modificação de um registro na tabela clientes.

**Trigger tr_categoria_add_log**

O **trigger tr_categoria_add_log** cria um novo registro na tabela categoria_add_log toda vez que um novo registro é inserido na tabela categoria.

**Trigger tr_categoria_update_log**

O trigger **tr_categoria_update_log** cria um novo registro na tabela categoria_update_log toda vez que é detectado a modificação de um registro na tabela categoria.

**7-Scripts de criação e inserção de dados**


Abaixo, todos os links dos scripts de inserção de dados de tabelas que estão armazenados no repositório do github.


Script de criação do bando de dados 
https://github.com/GuileSimon/CoderhouseSQL/blob/main/dbnextrade_create.sql

Script inserção de dados 
https://github.com/GuileSimon/CoderhouseSQL/blob/main/insert_database_nextrade

Script criação de views
https://github.com/GuileSimon/CoderhouseSQL/blob/main/views_dbnextrade

Script criação de store procedures
https://github.com/GuileSimon/CoderhouseSQL/blob/main/stored_procedures_dbnextrade

Script criação de funções
https://github.com/GuileSimon/CoderhouseSQL/blob/main/functions_dbnextrade

Script criação de triggers
https://github.com/GuileSimon/CoderhouseSQL/blob/main/triggers_dbnextrade

Script criação de sentenças DCL
https://github.com/GuileSimon/CoderhouseSQL/blob/main/users_sentencas

Script criação TCL
https://github.com/GuileSimon/CoderhouseSQL/blob/main/TCL_dbnextrade


**Script de Backup**

https://github.com/GuileSimon/CoderhouseSQL/blob/main/backup


**8-Relatórios**



**9-Ferramentas e técnologias utilizadas**

Nesse projeto foram utilizados as ferramentas: MySQL workbench.11


