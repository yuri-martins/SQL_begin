-- INSERINDO REGISTROS DE OUTRA TABELA NA TABELA PESSOAS

INSERT INTO PESSOAS (NOME, CPF, DATA_NASCIMENTO) -- INSERINDO DADOS NA TABELA PESSOA
SELECT NOME, CPF, DATA_NASCIMENTO -- PEGANDO OS CAMPOS DA TABELA CLIENTE
FROM CLIENTE -- SELECIONANDO DADOS DA TABELA CLIENTE
WHERE CODIGO > 30; -- ONDE O CODIGO É MAIOR QUE 30