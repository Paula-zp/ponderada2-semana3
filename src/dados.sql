INSERT INTO Unidade_saude (unidade_id, nome, tipo, endereco) VALUES
(1, 'Hospital Central', 'Hospital', 'Rua Principal, 123'),
(2, 'Clínica da Cidade', 'Clínica', 'Avenida Central, 456'),
(3, 'Hospital Infantil', 'Hospital', 'Rua da Criança, 789'),
(4, 'Clínica de Ortopedia', 'Clínica', 'Avenida dos Esportes, 321'),
(5, 'Hospital Psiquiátrico', 'Hospital', 'Rua da Paz, 567');

INSERT INTO Produto_medico (produto_id, nome, tipo, descricao) VALUES
(1, 'Paracetamol', 'Medicamento', 'Analgésico e antipirético'),
(2, 'Amoxicilina', 'Medicamento', 'Antibiótico'),
(3, 'Seringa Descartável', 'Material Médico', 'Seringa de plástico descartável'),
(4, 'Gaze Estéril', 'Material Médico', 'Gaze estéril para curativos'),
(5, 'Atadura Elástica', 'Material Médico', 'Atadura elástica para imobilização');

INSERT INTO Rota (rota_id, unidade_id, partida, distancia, tempo) VALUES
(1, 1, 'Hospital Central', '10 km', '01:00:00'),
(2, 2, 'Clínica da Cidade', '5 km', '00:30:00'),
(3, 3, 'Hospital Infantil', '8 km', '00:45:00'),
(4, 4, 'Clínica de Ortopedia', '3 km', '00:20:00'),
(5, 5, 'Hospital Psiquiátrico', '12 km', '01:15:00');

INSERT INTO Veiculo (veiculo_id, placa, tipo, capacidade, disponibilidade) VALUES
(1, 'ABC-1234', 'Ambulância', 4, true),
(2, 'XYZ-5678', 'Van', 8, true),
(3, 'DEF-9012', 'Carro', 5, true),
(4, 'GHI-3456', 'Ambulância', 4, false),
(5, 'JKL-7890', 'Ônibus', 20, true);

INSERT INTO Paciente (paciente_id, nome, idade, sexo, endereco) VALUES
(1, 'João Silva', 35, 0, 'Rua das Flores, 100'), 
(2, 'Maria Santos', 45, 1, 'Avenida Central, 200'),
(3, 'Pedro Oliveira', 28, 0, 'Rua dos Passarinhos, 50'),
(4, 'Ana Pereira', 60, 1, 'Praça da Liberdade, 300'),
(5, 'José Almeida', 42, 0, 'Travessa das Pedras, 150');

INSERT INTO Medico (medico_id, nome, idade, sexo, unidade_id) VALUES
(1, 'Dr. Carlos', 40, 0, 1),
(2, 'Dra. Ana', 35, 1, 2),
(3, 'Dr. José', 50, 0, 3),
(4, 'Dra. Maria', 38, 1, 4),
(5, 'Dr. André', 45, 0, 5);

INSERT INTO Transporte_rota (transporte_rota_id, veiculo_id, rota_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO Transporte_paciente (transporte_paciente_id, transporte_rota_id, paciente_id, data) VALUES
(1, 1, 1, '2024-05-09'),
(2, 2, 2, '2024-05-09'),
(3, 3, 3, '2024-05-09'),
(4, 4, 4, '2024-05-09'),
(5, 5, 5, '2024-05-09');

INSERT INTO Estoque (estoque_id, unidade_id, total_itens, responsavel) VALUES
(1, 1, 100, 'Ana Paula'),
(2, 2, 150, 'José Carlos'),
(3, 3, 200, 'Maria Oliveira'),
(4, 4, 120, 'Antônio Silva'),
(5, 5, 80, 'Cristina Costa');

INSERT INTO Estoque_produto (estoque_id, produto_id, quantidade, validade) VALUES
(1, 1, 50, '2025-06-01'),
(2, 2, 70, '2024-12-01'),
(3, 3, 80, '2023-10-01'),
(4, 4, 60, '2025-03-01'),
(5, 5, 40, '2024-09-01');

INSERT INTO Transporte_produto (transporte_produto_id, produto_id, transporte_rota_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);
