INSERT INTO cliente (nome, telefone, email) VALUES
('Maria Silva', '41988880000', 'maria@gmail.com'),
('João Pereira', '41997770000', 'joao@gmail.com');

 


INSERT INTO pet (nome, especie, idade, id_cliente) VALUES
('Rex', 'Cachorro', 5, 1),
('Mimi', 'Gato', 3, 2);



INSERT INTO veterinario (nome, CRMV) VALUES
('Dr. Carlos Almeida', 'CRMV1234'),
('Dra. Fernanda Lopes', 'CRMV5678');



INSERT INTO consulta (data, tipo_servico, id_pet, id_veterinario)
VALUES 
('2025-05-30', 'vacina', 1, 1),
('2025-06-04', 'castracao', 2, 2);


INSERT INTO medicamento(nome, quantidade, data_validade, id_consulta)
VALUES
('vermit', 2, '2030-11-30',1),
('vermit02', 3, '2030-11-01',2);



INSERT INTO medicamento_aplicado(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1, '1 dose unica'),
(1, 2, '2 gotas oral');






----update

UPDATE medicamento
set nome ='dipirona'
where id_medicamento =2;

select * from medicamento;

select    
    co.id_consulta,
    co.data,
    v.nome AS veterinario,
    v.crmv
From consulta co
Join veterinario v ON v.id_veterinario = co.id_veterinario;

