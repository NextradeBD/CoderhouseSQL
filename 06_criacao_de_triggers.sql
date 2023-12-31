-- Tabela categoria_add_log onde armazena todo registro criado na tabela categoria

create table categoria_add_log (
categoria_id int, 
nome_categoria varchar(100)
);

-- Trigger tr_categoria_add_log que cria um novo registro na tabela categoria_add_log
-- toda vez que é criado um novo registro na tabela categoria

create trigger `tr_categoria_add_log`
after insert on categoria
for each row
insert into categoria_add_log (categoria_id, nome_categoria)
values (new.categoria_id, new.nome_categoria);

-- Criando a tabela categoria_update_log para armazenar as atualizações feitas na tabela categoria

create table categoria_update_log (
categoria_id int, 
nome_categoria varchar(100)
);

-- criando trigger tr_categoria_update_log que cria um novo registro na tabela categoria_update_log 
-- toda vez em que a tabela categoria é atualizada

create trigger tr_categoria_update_log
before update on categoria
for each row
insert into categoria_update_log
values (new.categoria_id, new.nome_categoria);

-- Tabela clientes_add_log onde armazena todo registro criado na tabela clientes

create table clientes_add_log (
cliente_id int, 
nome_completo varchar(200), 
data_nasc date, 
cpf varchar(11),
celular varchar(13), 
email varchar(100), 
cep varchar(27), 
endereco varchar(100), 
bairro varchar(50), 
cidade varchar(50), 
numero varchar(10), 
estado varchar(2), 
regiao_id int);
  
-- Trigger tr_clientes_add_log que cria um novo registro na tabela clientes_add_log
-- toda vez que é criado um novo registro na tabela clientes

create trigger tr_clientes_add_log
after insert on clientes
for each row
insert into clientes_add_log
values (new.cliente_id, 
new.nome_completo, 
new.data_nasc, 
new.cpf, 
new.celular, 
new.email, 
new.cep, 
new.endereco, 
new.bairro, 
new.cidade, 
new.numero, 
new.estado, 
new.regiao_id);

-- Tabela clientes_update_log para armazenar todas as atualizações feitas na tabela clientes

create table clientes_update_log (
cliente_id int, 
nome_completo varchar(200), 
data_nasc date, 
cpf varchar(11),
celular varchar(13), 
email varchar(100), 
cep varchar(27), 
endereco varchar(100), 
bairro varchar(50), 
cidade varchar(50), 
numero varchar(10), 
estado varchar(2), 
regiao_id int);
  
-- Detectar uma modificação de um registro da tabela

create trigger tr_clientes_update_log
before update on clientes
for each row
insert into clientes_update_log
values (new.cliente_id, 
new.nome_completo, 
new.data_nasc, 
new.cpf, 
new.celular, 
new.email, 
new.cep, 
new.endereco, 
new.bairro, 
new.cidade, 
new.numero, 
new.estado, 
new.regiao_id);
