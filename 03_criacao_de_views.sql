
-- RETORNA O TOP 50 DAS ENTREGAS MAIS RÁPIDAS EM DIAS

CREATE VIEW entregas_mais_rapidas AS
SELECT e.pedido_id, c.nome_completo, p.data_pedido, e.data_entrega, DATEDIFF(e.data_entrega, p.data_pedido) AS dias_entrega
FROM entregas e
LEFT JOIN clientes c ON e.cliente_id = c.cliente_id
LEFT JOIN pedidos p ON p.pedido_id = e.pedido_id
ORDER BY dias_entrega asc
LIMIT 50;

-- RETORNA O TOP 10 DOS PRODUTOS COM MAIOR FATURAMENTO

CREATE VIEW produtos_top10_faturamento AS
SELECT p.produto_id, p.nome_produto, ct.categoria_id, ct.nome_categoria, ROUND(SUM(pd.valor),2) as total_vendido
FROM produtos p
LEFT JOIN categoria ct ON p.categoria_id = ct.categoria_id
LEFT JOIN pedidos pd ON p.produto_id = pd.produto_id
GROUP BY p.produto_id, p.nome_produto, ct.categoria_id, ct.nome_categoria
ORDER BY total_vendido DESC
LIMIT 10;

-- VIEW PARA RETORNAR A LISTA DE TODOS PRODUTOS VINCULADOS A SUAS RESPECTIVAS CATEGORIAS

CREATE VIEW produtos_e_categorias AS
SELECT p.produto_id, p.nome_produto, ct.categoria_id, ct.nome_categoria from produtos p
LEFT JOIN categoria ct ON p.categoria_id = ct.categoria_id;

-- EXIBE A MÉDIA DO TEMPO DE ENTREGA DOS PEDIDOS

CREATE VIEW media_dias_entrega AS
SELECT ROUND(AVG(DATEDIFF(e.data_entrega, p.data_pedido)),2) AS media_dias_entrega
FROM entregas e
LEFT JOIN pedidos p ON p.pedido_id = e.pedido_id;

-- CLIENTES MAIS RECORRENTES: TRÁS A LISTA COMPLETA DE TODOS OS CLIENTES QUE JÁ COMPRARAM E QUANTIDADE DE VEZES

CREATE VIEW clientes_mais_recorrentes AS
SELECT COUNT(p.cliente_id) AS total_compras, p.cliente_id, c.nome_completo 
FROM pedidos p
LEFT JOIN clientes c ON p.cliente_id = c.cliente_id
GROUP BY p.cliente_id, c.nome_completo
ORDER BY total_compras DESC;


-- MOSTRA O TOTAL DE ENTREGAS DE CADA TRANSPORTADORA

CREATE VIEW total_entregas_transportadora AS
SELECT t.nome_transportadora, count(*) AS total_entregas
FROM transportadoras AS t
JOIN entregas AS e ON e.transportadora_id = t.transportadora_id
GROUP BY t.nome_transportadora
ORDER BY total_entregas desc;


-- LISTA O TOP 10 DOS PRODUTOS MAIS VENDIDOS EM QUANTIDADE

CREATE VIEW top_10_produtos AS
SELECT pr.nome_produto, count(*) AS total_vendido
FROM pedidos AS pe
JOIN produtos AS pr ON pe.produto_id = pr.produto_id
GROUP BY pr.nome_produto
ORDER BY total_vendido desc
LIMIT 10;
