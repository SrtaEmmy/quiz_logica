CREATE DATABASE quiz2;

USE quiz2;

CREATE TABLE temas (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL unique,
  defecto VARCHAR(50) DEFAULT null
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE preguntas (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_tema INT NOT NULL,
  pregunta TEXT NOT NULL,
  opcion_a TEXT NOT NULL,
  opcion_b TEXT NOT NULL,
  opcion_c TEXT NOT NULL,
  correcta VARCHAR(1) NOT NULL,
  FOREIGN KEY (id_tema) REFERENCES temas (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO temas (nombre, defecto) VALUES
('Programación', 'true'),
('Historia', 'true'),
('Ciencias', 'true'),
('Arte', 'true'),
('Geografía', 'true'),
('Grecia', 'true'),
('Matemáticas', 'true'),
('MySql', 'true');



INSERT INTO preguntas (id_tema, pregunta, opcion_a, opcion_b, opcion_c, correcta) VALUES
(1, '¿Qué es un bucle en programación?', 'Una estructura de control de flujo', 'Una condición lógica', 'Un bloque de código que se repite varias veces', 'c'),
(1, '¿Cuál es el lenguaje de programación más utilizado en el desarrollo web?', 'Java', 'Python', 'JavaScript', 'c'),
(1, '¿Qué significa HTML?', 'Hyper Text Markup Language', 'High Technology Markup Language', 'Hyperlink and Text Markup Language', 'a'),
(1, '¿Qué es CSS?', 'Un lenguaje de programación', 'Un protocolo de comunicación', 'Un lenguaje de hojas de estilo', 'c'),
(1, '¿Qué es un IDE?', 'Un entorno de desarrollo integrado', 'Un formato de archivo', 'Un protocolo de red', 'a'),

(2, '¿Quién fue el primer presidente de Estados Unidos?', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'a'),
(2, '¿En qué año comenzó la Primera Guerra Mundial?', '1914', '1918', '1939', 'a'),
(2, '¿Cuál es la capital de Francia?', 'Londres', 'París', 'Madrid', 'b'),
(2, '¿En qué año se descubrió América?', '1492', '1776', '1812', 'a'),
(2, '¿Cuál es la montaña más alta del mundo?', 'Monte Everest', 'Monte Kilimanjaro', 'Monte Fuji', 'a'),

(3, '¿Cuál es el elemento más abundante en la Tierra?', 'Hierro', 'Oxígeno', 'Carbono', 'b'),
(3, '¿Quién descubrió la teoría de la relatividad?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'b'),
(3, '¿Cuál es el planeta más grande del sistema solar?', 'Júpiter', 'Saturno', 'Neptuno', 'a'),
(3, '¿Qué es la fotosíntesis?', 'Un proceso de respiración celular', 'Un proceso de alimentación de plantas', 'Un proceso de conversión de luz en energía', 'c'),
(3, '¿Cuál es la unidad básica de la materia?', 'Átomo', 'Molécula', 'Célula', 'a'),


(4, '¿Quién pintó la Mona Lisa?', 'Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh', 'a'),
(4, '¿Qué movimiento artístico fue liderado por Salvador Dalí?', 'Impresionismo', 'Surrealismo', 'Expresionismo', 'b'),
(4, '¿Cuál es la obra más famosa de Vincent van Gogh?', 'La noche estrellada', 'El beso', 'Guernica', 'a'),
(4, '¿Quién es conocido por crear "El grito"?', 'Pablo Picasso', 'Edvard Munch', 'Claude Monet', 'b'),
(4, '¿Qué es el cubismo?', 'Un movimiento literario', 'Un estilo arquitectónico', 'Un estilo artístico', 'c'),

(5, '¿Cuál es el río más largo del mundo?', 'Amazonas', 'Nilo', 'Yangtsé', 'a'),
(5, '¿Qué país es conocido como "la tierra del sol naciente"?', 'China', 'Japón', 'India', 'b'),
(5, '¿Cuál es el continente más grande del mundo?', 'Europa', 'África', 'Asia', 'c'),
(5, '¿Cuál es la ciudad más poblada del mundo?', 'Shanghai', 'Mumbai', 'Tokio', 'a'),
(5, '¿Qué país tiene la forma de una bota?', 'España', 'Italia', 'Grecia', 'b'),

(6, '¿Quién fue el dios del rayo en la mitología griega?', 'Zeus', 'Hades', 'Poseidón', 'a'),
(6, '¿Qué filósofo griego es conocido por su método socrático?', 'Platón', 'Aristóteles', 'Sócrates', 'c'),
(6, '¿Cuál era el hogar de los dioses griegos?', 'Monte Olimpo', 'Monte Everest', 'Monte Sinai', 'a'),
(6, '¿Quién mató al Minotauro?', 'Perseo', 'Teseo', 'Hércules', 'b'),
(6, '¿Quién escribió la "Ilíada" y la "Odisea"?', 'Homero', 'Esquilo', 'Sófocles', 'a'),

(7, '¿Cuál es el resultado de 2 + 2 * 2?', '4', '6', '8', 'b'),
(7, '¿Cuántos lados tiene un triángulo?', '3', '4', '5', 'a'),
(7, '¿Qué es la raíz cuadrada de 144?', '12', '16', '24', 'a'),
(7, '¿Qué es el Teorema de Pitágoras?', 'a² = b² + c²', 'a + b + c = 180°', 'πr²', 'a'),
(7, '¿Cuál es el número Pi (π) aproximado?', '3.14', '2.71', '1.618', 'a'),

(8, '¿Qué comando se utiliza para seleccionar todos los registros de una tabla?', 'GET', 'SELECT', 'SEARCH', 'b'),
(8, '¿Qué hace el comando "INSERT INTO" en MySQL?', 'Actualiza registros', 'Elimina registros', 'Inserta registros', 'c'),
(8, '¿Cuál es la función de la cláusula "WHERE" en una consulta SQL?', 'Filtrar resultados', 'Ordenar resultados', 'Unir tablas', 'a'),
(8, '¿Qué hace el comando "UPDATE" en MySQL?', 'Elimina registros', 'Actualiza registros', 'Inserta registros', 'b'),
(8, '¿Cuál es el símbolo para denotar "distinto" en SQL?', '<>', '==', '!=', 'c');


-- temas que podrán ser manipulados
INSERT INTO preguntas (id_tema, pregunta, opcion_a, opcion_b, opcion_c, correcta) VALUES
(9, '... pregunta ...', 'a', 'b', 'la respuesta es esta', 'c'),
(9, '... pregunta ...', 'a', 'la respuesta es esta', 'c', 'b'),
(9, '... pregunta ...', 'a', 'b', 'la respuesta es esta', 'c'),
(9, '... pregunta ...', 'la respuesta es esta', 'b', 'c', 'a'),
(9, '... pregunta ...', 'a', 'b', 'la respuesta es esta', 'c'),


(10, '... pregunta ...', 'a', 'b', 'la respuesta es esta', 'c'),
(10, '... pregunta ...', 'la respuesta es esta', 'b', 'c', 'a'),
(10, '... pregunta ...', 'a', 'b', 'la respuesta es esta', 'c'),
(10, '... pregunta ...', 'a', 'la respuesta es esta', 'c', 'b'),
(10, '... pregunta ...', 'a', 'b', 'la respuesta es esta', 'c');

