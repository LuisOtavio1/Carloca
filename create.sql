CREATE TABLE Montadora (
    idMontadora INT PRIMARY KEY AUTO_INCREMENT,
    nomeMontadora VARCHAR(255) NOT NULL
);

CREATE TABLE Cor (
    idCor INT PRIMARY KEY AUTO_INCREMENT,
    nomeCor ENUM('Branco', 'Preto', 'Prata') NOT NULL
);

CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nomeCategoria VARCHAR(255) NOT NULL
);

CREATE TABLE Unidade (
    idUnidade INT PRIMARY KEY AUTO_INCREMENT,
    nomeUnidade VARCHAR(255) NOT NULL
);

CREATE TABLE Carro (
    idCarro INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    idMontadora INT,
    idCor INT,
    idCategoria INT,
    disponivel BOOLEAN DEFAULT TRUE,
    idUnidadeLocacao INT,
    quilometragemAtual INT,
    FOREIGN KEY (idMontadora) REFERENCES Montadora(idMontadora),
    FOREIGN KEY (idCor) REFERENCES Cor(idCor),
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (idUnidadeLocacao) REFERENCES Unidade(idUnidade)
);

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE Locacao (
    idLocacao INT PRIMARY KEY AUTO_INCREMENT,
    idCarro INT,
    idCliente INT,
    dataLocacao DATE NOT NULL,
    dataDevolucao DATE,
    quilometragemInicial INT,
    quilometragemFinal INT,
    FOREIGN KEY (idCarro) REFERENCES Carro(idCarro),
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);