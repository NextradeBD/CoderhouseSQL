use dbnextrade;

		-- (((  Script tabela 1  )))

-- analisando tabela a ser modificada
select * from entregas order by pedido_id desc;

-- início da transação
start transaction;

-- deletando dados
delete from entregas where pedido_id in (597,596,595,594,593,592);

-- revertendo alterações
rollback;

-- confirmando toda a transação
commit;


		-- (((  Script tabela 2  )))


-- analisando tabela a ser modificada
select * from fabricantes order by fabricante_id desc;

-- iniciando transação
start transaction;

-- inserindo primeiro lote de dados
INSERT INTO fabricantes (nome_fabricante, info, telefone, email) VALUES
    ('Eletrônicos do Brasil', 'Fabricante de produtos eletrônicos', '553487654321', 'contato@eletronicos.com'),
    ('Confecções Brasileiras', 'Fabricante de roupas', '553287654321', 'contato@confeccoes.com'),
    ('Móveis de Qualidade', 'Fabricante de móveis', '553487654322', 'contato.moveis@empresa.com'),
    ('Alimentos Deliciosos', 'Fabricante de alimentos', '553287654322', 'contato@alimentos.com');

 -- criando savepoint
    savepoint lote_1;
    
-- inserindo segundo lote de dados    
INSERT INTO fabricantes (nome_fabricante, info, telefone, email) VALUES   
    ('Brinquedos Divertidos', 'Fabricante de brinquedos', '553487654323', 'contato@brinquedos.com'),
    ('Calçados Fashion', 'Fabricante de calçados', '553287654323', 'contato@calcados.com'),
    ('Produtos Químicos Seguros', 'Fabricante de produtos químicos', '553487654324', 'contato@produtosquimicos.com'),
    ('Utensílios Domésticos Práticos', 'Fabricante de utensílios domésticos', '553287654324', 'contato@utensilios.com');
    
-- criando segundo savepoint    
    savepoint lote_2;
    
-- sentença pra eleminação do savepoint dos primeiros 4 registros inseridos
	-- release savepoint lote_1;
    
-- cancelando alterações    
rollback;

-- confirmando transação  
commit;
