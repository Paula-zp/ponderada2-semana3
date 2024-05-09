use ponderada;

CREATE TABLE Unidade_saude (
    unidade_id INT PRIMARY KEY,
    nome VARCHAR(255),
    tipo VARCHAR(255),
    endereco VARCHAR(255)
);

CREATE TABLE Rota (
    rota_id INT PRIMARY KEY,
    unidade_id INT,
    partida VARCHAR(100),
    distancia VARCHAR(100),
    tempo TIME,
    FOREIGN KEY (unidade_id) REFERENCES Unidade_saude(unidade_id)
);

CREATE TABLE Veiculo (
    veiculo_id INT PRIMARY KEY,
    placa VARCHAR(255),
    tipo VARCHAR(255),
    capacidade INT,
    disponibilidade BOOLEAN
);

CREATE TABLE Transporte_rota (
    transporte_rota_id INT PRIMARY KEY,
    veiculo_id INT,
    rota_id INT,
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(veiculo_id),
    FOREIGN KEY (rota_id) REFERENCES Rota(rota_id)
);

CREATE TABLE Paciente (
    paciente_id INT PRIMARY KEY,
    nome VARCHAR(255),
    idade INT,
    sexo INT,
    endereco VARCHAR(255)
);


CREATE TABLE Medico (
    medico_id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    sexo INT,
    unidade_id INT,
    FOREIGN KEY (unidade_id) REFERENCES Unidade_saude(unidade_id)
);

CREATE TABLE Tratamento_medico (
    tratamento_medico_id INT PRIMARY KEY,
    paciente_id INT,
    medico_id INT,
    avaliacao INT,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES Medico(medico_id)
);

CREATE TABLE Transporte_paciente (
    transporte_paciente_id INT PRIMARY KEY,
    transporte_rota_id INT,
    paciente_id INT,
    data DATE,
    FOREIGN KEY (transporte_rota_id) REFERENCES Transporte_rota(transporte_rota_id),
    FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id)
);

CREATE TABLE Produto_medico (
    produto_id INT PRIMARY KEY,
    nome VARCHAR(255),
    tipo VARCHAR(255),
    descricao VARCHAR(255)
);

CREATE TABLE Estoque (
    estoque_id INT PRIMARY KEY,
    unidade_id INT,
    total_itens INT,
    responsavel VARCHAR(255),
    FOREIGN KEY (unidade_id) REFERENCES Unidade_saude(unidade_id)
);

CREATE TABLE Estoque_produto (
    estoque_id INT,
    produto_id INT,
    quantidade INT,
    validade DATE,
    FOREIGN KEY (produto_id) REFERENCES Produto_medico(produto_id),
    FOREIGN KEY (estoque_id) REFERENCES Estoque(estoque_id),
    PRIMARY KEY (produto_id, estoque_id)
);

CREATE TABLE Transporte_produto (
    transporte_produto_id INT PRIMARY KEY,
    produto_id INT,
    transporte_rota_id INT,
    FOREIGN KEY (transporte_rota_id) REFERENCES Transporte_rota(transporte_rota_id),
    FOREIGN KEY (produto_id) REFERENCES Produto_medico(produto_id)
);
