CREATE TABLE tarefas (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20) NOT NULL,
    descricao TEXT,
    prazo DATE,
    prioridade INTEGER(1),
    concluida BOOLEAN
);

INSERT INTO tarefas
(nome, descricao, prioridade)
VALUES
('Estudar PHP', 'Continuar meus estudos de PHP e MySQL', 1),
('Estudar HTML', 'Continuar meus estudos de HTML', 2),
('Estudar CSS', 'Continuar meus estudos de CSS', 1),
('Estudar JavaScript', 'Continuar meus estudos de JavaScript', 3);

SELECT * FROM tarefas;

SELECT nome, prioridade FROM tarefas;

SELECT nome, descricao, prioridade FROM tarefas
WHERE prioridade = 1;

SELECT nome, descricao, prioridade FROM tarefas
WHERE nome LIKE '%php%';

SELECT nome, descricao, prioridade FROM tarefas
WHERE nome LIKE 'php';


CREATE TABLE anexos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tarefa_id INTEGER NOT NULL,
    nome VARCHAR(255) NOT NULL,
    arquivo VARCHAR(255) NOT NULL
);

