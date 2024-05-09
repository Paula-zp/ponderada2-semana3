SELECT 
    Veiculo.veiculo_id,
    COUNT(Transporte_paciente.paciente_id) / COUNT(DISTINCT MONTH(Transporte_paciente.data)) AS media_pacientes_por_mes
FROM 
    Veiculo
JOIN 
    Transporte_rota ON Veiculo.veiculo_id = Transporte_rota.veiculo_id
JOIN 
    Transporte_paciente ON Transporte_rota.transporte_rota_id = Transporte_paciente.transporte_rota_id
GROUP BY 
    Veiculo.veiculo_id;
