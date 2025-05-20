-- Criação do banco de dados
CREATE DATABASE faculdade;
USE faculdade;

-- Tabela de Alunos
CREATE TABLE tbl_alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100)
);

-- Tabela de Cursos
CREATE TABLE tbl_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT
);

-- Tabela de Disciplinas
CREATE TABLE tbl_disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES tbl_cursos(id_curso)
);

-- Tabela de Professores
CREATE TABLE tbl_professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especializacao VARCHAR(100)
);

-- Tabela de Matrículas
CREATE TABLE tbl_matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_disciplina INT,
    id_professor INT,
    nota DECIMAL(5,2),
    periodo VARCHAR(10),
    FOREIGN KEY (id_aluno) REFERENCES tbl_alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES tbl_disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES tbl_professores(id_professor)
);
