-- Lista de Exercícios:
-- Praticando os Comandos DDL (Data Definition Language)
-- CREATE / ALTER / DROP / TRUNCATE(não vamos usar) / CHECK / CHANGE(bom evitar) / DESCRIBE


-- 1) Criar o Banco de Dados lista 002:
CREATE DATABASE lista002;
USE lista002;

-- 2) Crie uma tabela com o nome de alunos.
-- Deverá conter o campo código (inteiro), nome, telefone e cidade (texto):
CREATE TABLE alunos(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(50), 
telefone VARCHAR(50)
);

-- 3) Use o comando “desc alunos” para verificar se a tabela foi criada:
DESCRIBE alunos;

-- 4) Crie uma tabela com o nome de “alunos2”. 
-- Deverá conter o campo código (inteiro), nome (varchar 200), telefone (varchar 50) e cidade (varchar 100): 
CREATE TABLE alunos2(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200),
telefone VARCHAR(50),
cidade VARCHAR(100)
);

-- Ver como está a tabela alunos2:
DESCRIBE alunos2;

-- 5) Crie a tabela funcionários contendo os campos nome, endereço, telefone, cidade, estado, cep, rg, cpf e salário. 
-- Coloque os tipos de dados necessários.
CREATE TABLE funcionarios(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
rg VARCHAR (20) NOT NULL,
telefone VARCHAR(50),
endereco VARCHAR(200),
cep CHAR (8),
cidade VARCHAR(100),
estado VARCHAR(100),
salario FLOAT
);
-- Ver como está a tabela funcionarios:
DESCRIBE funcionarios;

-- 6) Crie a tabela fornecedores contendo os campos nome, endereço, telefone, cidade, estado, cep, cnpj e email. 
-- Coloque os tipos de dados necessários.
CREATE TABLE fornecedores(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
cnpj CHAR(14) UNIQUE NOT NULL,
telefone VARCHAR(50),
endereco VARCHAR(200),
cep CHAR (8),
cidade VARCHAR(100),
estado VARCHAR(100),
email VARCHAR(200)
);

-- Ver como está a tabela fornecedores:
DESCRIBE fornecedores;

-- 7) Crie a tabela livros contendo o campo código, titulo, categoria, resumo, precocusto, precovenda.
CREATE TABLE livros(
codigo_livro SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(200) NOT NULL,
categoria VARCHAR(100),
autor VARCHAR(100),
ano_publicacao SMALLINT,
editora VARCHAR(100),
preco_custo FLOAT,
preco_venda FLOAT,
quantidade_exemplares SMALLINT
);

-- Ver como está a tabela livros:
DESCRIBE livros;

-- 8) Analise a estrutura das tabelas desc;
-- OBSERVAÇÃO: Como recomendado, já estava usando o comando DESCRIBE logo depois de criar cada tabela (VIDE acima)

-- 9) Crie a tabela estoque contendo o campo código, nomedoproduto, categoria, quantidade e fornecedor.
CREATE TABLE estoque(
codigo_estoque SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(200) NOT NULL,
categoria VARCHAR(100),
quantidade_estoque SMALLINT,
fornecedor VARCHAR(100)
);

-- Ver como está a tabela:
DESCRIBE estoque;

-- 10)  Crie a tabela notas contendo os campos código, nomedoaluno, bimestre;
CREATE TABLE notas(
codigo_notas SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(200) NOT NULL,
bimestre TINYINT
);

-- Ver como está a tabela:
DESCRIBE notas;

-- 11 - 1) Crie a tabela caixa contendo os campos código, data, descrição, debito e credito.
CREATE TABLE caixa(
codigo_caixa SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
data_venda VARCHAR(200) NOT NULL,
descricao VARCHAR(200) NOT NULL,
debito FLOAT,
credito FLOAT
);
-- Ver como está a tabela:
DESCRIBE caixa;

-- 11 - 2) Crie a tabela contasAPagar contendo os campos código, data_conta, descrição, valor e data_pagamento.
CREATE TABLE contasapagar(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
data_conta DATE,
descricao VARCHAR(200),
valor FLOAT,
data_pagamento DATE
);
-- Ver como está a tabela:
DESCRIBE contasapagar;

-- 12)  Crie a tabela contasAReceber contendo os campos código, data_conta, descrição, valor e data_recebimento.
CREATE TABLE contasareceber(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
data_conta DATE,
descricao VARCHAR(200),
valor FLOAT,
data_recebimento DATE
);
-- Ver como está a tabela:
DESCRIBE contasareceber;

-- 13) Crie a tabela filmes contendo os campos código, nome, sinopse, categoria e diretor:
CREATE TABLE filmes(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (200),
sinopse VARCHAR(500),
categoria VARCHAR (200),
diretor VARCHAR(200)
);
-- Ver como está a tabela:
DESCRIBE filmes;

-- 14) Crie a tabela CDs contendo os campos código, nome, cantor, ano e quantidademusicas.
CREATE TABLE CDs(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (200),
cantor VARCHAR(200),
ano INT,
quantidade_musicas INT
);
-- Ver como está a tabela:
DESCRIBE CDs;

-- 15) Exclua a tabela alunos: “DROP TABLE alunos2;”.
DROP TABLE alunos2;

-- 16) Use o comando “desc” e veja se a tabela realmente foi excluída.
DESCRIBE TABLE alunos2;

-- 17) Exclua a tabela livros.
DROP TABLE livros;
-- Verificar se a tabela foi excluída:
DESCRIBE livros;

-- 18) Exclua a tabela contasAPagar.
DROP TABLE contasapagar;
-- Verificar se a tabela foi excluída:
DESCRIBE contasapagar;

-- 19) Exclua a tabela contasAReceber.
DROP TABLE contasareceber;
-- Verificar se a tabela foi excluída:
DESCRIBE contasareceber;

-- 20) Exclua a tabela filmes.
DROP TABLE filmes;
-- Verificar se a tabela foi excluída:
DESCRIBE filmes;

-- 21) Liste algumas tabelas para desde “desc”:
DESCRIBE alunos;
DESCRIBE funcionarios;
DESCRIBE fornecedores;
DESCRIBE estoque;
DESCRIBE notas;
DESCRIBE caixa;
DESCRIBE CDs;

-- 22) Agora iremos aprender como MUDAR O NOME das tabelas. É fácil, basta usar o comando ALTER TABLE. 
-- Por exemplo se quisermos mudar o nome da tabela nome_antigo para nome_novo o comando ficará assim:
-- “ALTER TABLE nome_antigo RENAME TO nome_novo;”. Renomeie a tabela alunos para super_alunos.
ALTER TABLE alunos RENAME TO super_alunos;

-- 23)Use o comando “desc” e veja se foi alterado o nome.
DESCRIBE alunos;
DESCRIBE super_alunos;

-- 24) Altere o nome da tabela estoque para produtos.
ALTER TABLE estoque RENAME TO produtos;
-- Verificar se a tabela foi renomeada:
DESCRIBE estoque;
DESCRIBE produtos;

-- 25) Altere o nome da tabela notas para aprovados.
ALTER TABLE notas RENAME TO aprovados;
-- Verificar se a tabela foi renomeada:
DESCRIBE notas;
DESCRIBE aprovados;

-- 26) Altere o nome da tabela aprovados para notas.
ALTER TABLE aprovados RENAME TO notas;
-- Verificar se a tabela foi renomeada:
DESCRIBE aprovados;
DESCRIBE notas;

-- 27) Exclua a tabela dinheiro. OBS.: NÃO TEMOS A TABELA DINHEIRO NA LISTA !!!

-- 28) Exclua a tabela notas.
DROP TABLE notas;
-- Verificar se a tabela foi excluída:
DESCRIBE notas;

-- 29) Altere o nome da tabela super_alunos para alunos.
ALTER TABLE super_alunos RENAME TO alunos;
-- Verificar se a tabela foi renomeada:
DESCRIBE super_alunos;
DESCRIBE alunos;

-- 30) Altere o nome da tabela alunos para estudantes.
ALTER TABLE alunos RENAME TO estudantes;
-- Verificar se a tabela foi renomeada:
DESCRIBE alunos;
DESCRIBE estudantes;

-- 31) Altere o nome da tabela estudantes para super_estudantes.
ALTER TABLE estudantes RENAME TO super_estudantes;
-- Verificar se a tabela foi renomeada:
DESCRIBE estudantes;
DESCRIBE super_estudantes;

-- 32) Veja se o nome foi alterado utilizando o comando “desc”. 
-- OBS.: JÁ HAVIA VERIFICADO ANTERIORMENTE!!! (vide acima)

-- 33) Exclua a tabela super_estudantes.
DROP TABLE super_estudantes;
-- Verificar se a tabela foi excluída:
DESCRIBE super_estudantes;

-- 34) desc super_estudantes e desc alunos(só para verificação).
DESCRIBE alunos;
-- OBS.: SOBRE A "super_estudantes" JÁ HAVIA VERIFICADO ANTERIORMENTE!!! (vide acima)

-- 35) Inclua o atributo estado na tabela alunos: “ALTER TABLE ALUNOS ADD ESTADO VARCHAR;”.
-- OBS.: Precisaremos criar a tabela alunos novamente!
CREATE TABLE alunos(
codigo SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(50), 
telefone VARCHAR(50)
);
-- Verificar se a tabela foi criada novamente:
DESCRIBE alunos;

ALTER TABLE alunos ADD estado VARCHAR(200);
-- Verificar se o atributo foi adicionado:
DESCRIBE alunos;

-- 36) Crie novamente a tabela caixa.
-- OBS.: Não foi excluída anteriormente!
DESCRIBE caixa;

-- 37) Adicione o campo observação do tipo varchar na tabela caixa.
ALTER TABLE caixa ADD observacao VARCHAR(200);
-- Verificar se o atributo foi adicionado:
DESCRIBE caixa;

-- 38) Adicione o campo cpf na tabela alunos.
ALTER TABLE alunos ADD cpf CHAR(11);
-- Verificar se o atributo foi adicionado:
DESCRIBE alunos;

-- 39) Veja a estrutura da tabela caixa - desc.
-- OBS.: JÁ HAVIA VERIFICADO ANTERIORMENTE!!! (vide acima)

-- 40) Adicione o campo saldo na tabela caixa.
ALTER TABLE caixa ADD saldo decimal(7,2);
-- Verificar se o atributo foi adicionado:
DESCRIBE caixa;

-- LISTA 002 FINALIZADA!

