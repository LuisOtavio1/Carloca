-- mostra carros disponiveis para locação
SELECT Carro.modelo, Montadora.nomeMontadora, Cor.nomeCor, Categoria.nomeCategoria
FROM Carro
JOIN Montadora ON Carro.idMontadora = Montadora.idMontadora
JOIN Cor ON Carro.idCor = Cor.idCor
JOIN Categoria ON Carro.idCategoria = Categoria.idCategoria
WHERE Carro.disponivel = TRUE;

-- mostra o registro dos carros locados pelos clientes
SELECT Cliente.nomeCliente, Carro.modelo, Locacao.dataLocacao, Locacao.dataDevolucao
FROM Locacao
JOIN Cliente ON Locacao.idCliente = Cliente.idCliente
JOIN Carro ON Locacao.idCarro = Carro.idCarro;

-- filtra por um cliente específico
SELECT Cliente.nomeCliente, Carro.modelo, Locacao.dataLocacao, Locacao.dataDevolucao
FROM Locacao
JOIN Cliente ON Locacao.idCliente = Cliente.idCliente
JOIN Carro ON Locacao.idCarro = Carro.idCarro
WHERE Cliente.idCliente = 1;

-- mostra os carros de cada unidade
SELECT Carro.modelo, Montadora.nomeMontadora, Cor.nomeCor, Categoria.nomeCategoria
FROM Carro
JOIN Montadora ON Carro.idMontadora = Montadora.idMontadora
JOIN Cor ON Carro.idCor = Cor.idCor
JOIN Categoria ON Carro.idCategoria = Categoria.idCategoria
WHERE Carro.idUnidadeLocacao = 2;
