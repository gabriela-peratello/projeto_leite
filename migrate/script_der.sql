CREATE DATABASE if NOT EXISTS registros_leite;

USE registros_leite;


CREATE TABLE turma (
 sala VARCHAR(25) NOT NULL PRIMARY KEY,
 representante VARCHAR(50)
);

CREATE TABLE inventario (
 id_entrega INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 quantidade_caixas INT,
 dt_entrega DATE,
 sala CHAR(10)
);



ALTER TABLE inventario ADD CONSTRAINT FK_inventario_0 FOREIGN KEY (sala) REFERENCES turma (sala);


