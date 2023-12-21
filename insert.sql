INSERT INTO Montadora (nomeMontadora) 
VALUES
('Chevrolet'), ('Ford'), ('Volkswagen'), ('Fiat');

INSERT INTO Cor (nomeCor) 
VALUES
('Branco'), ('Preto'), ('Prata');

INSERT INTO Categoria (nomeCategoria) 
VALUES
('Hatch'), ('Sedan Compacto'), ('Sedan Médio'), ('SUV');

INSERT INTO Unidade (nomeUnidade) VALUES
('CARLOCA SP'), ('CARLOCA RJ'), ('CARLOCA MG');

INSERT INTO Carro (modelo, idMontadora, idCor, idCategoria, idUnidadeLocacao, quilometragemAtual)
VALUES
('Onix', 1, 1, 1, 1, 0),
('Fiesta', 2, 2, 2, 2, 0),
('Gol', 3, 1, 1, 3, 0),
('Palio', 4, 3, 2, 1, 0),
('Civic', 2, 1, 3, 2, 10000),
('Polo', 3, 2, 1, 1, 8000),
('Renegade', 4, 3, 4, 3, 12000),
('Uno', 1, 1, 1, 2, 6000);


INSERT INTO Cliente (nomeCliente, cpf) 
VALUES
('Luis Alves', '824.406.591-10'),
('Cristiano Ronaldo', '787.314.522-05'),
('Carlos Oliveira', '111.222.333-44'),
('Ana Lima', '555.666.777-88'),
('Lionel Messi', '888.444.666-10');

INSERT INTO Locacao (idCarro, idCliente, dataLocacao, quilometragemInicial)
VALUES
(1, 1, '2023-01-01', 0),
(2, 2, '2023-02-01', 0),
(3, 3, '2023-03-01', 15000),
(4, 4, '2023-04-01', 5000),
(7, 5, '2023-04-01', 7000);

UPDATE Carro
SET disponivel = FALSE
WHERE idCarro IN (1, 2, 3, 4, 7);