
-- Criando usuário local jonatas.barros com a senha Mudar@123
create user 'guilherme.simoes'@'localhost' identified by 'Mudar@123'; -- somente leitura em todas as tabelas, e não pode excluir nada
-- Criando usuário local tiago.firmino com a senha Mudar@123
create user 'tiago.firmino'@'localhost' identified by 'Mudar@123'; -- leitura, inserção e modificação de dados de todas as tabelas, não pode excluir nada
-- Criando usuário local guilherme.simoes com a senha Mudar@123
create user 'jonatas.barros'@'localhost' identified by 'Mudar@123'; -- Permissão total

-- Concedendo permissão somente de leitura para todas tabelas (sem permissão de exclusão)
grant select on dbnextrade to 'guilherme.simoes'@'localhost';

-- Concedendo permissão leitura, inserção e modificação de dados de todas as tabelas (sem permissão de exclusão)
grant select, insert, update on dbnextrade.* to 'tiago.firmino'@'localhost';

-- Concedendo permissão de todas as ações para qualquer tabela
grant all on dbnextrade.* to 'jonatas.barros'@'localhost';
