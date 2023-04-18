CREATE TABLE hoteles (
    id_hotel INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    precio INT (100) NOT NULL,
    estrellas INT (2) NOT NULL,
    ubicacion VARCHAR (50) NOT NULL
);

CREATE TABLE reservacion (
    id_reservacion INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fecha VARCHAR (30) NOT NULL,
    precio INT (100) NOT NULL,
    id_hotel INT(10) NOT NULL,
    FOREIGN KEY (id_hotel) REFERENCES hoteles (id_hotel) ON DELETE CASCADE
);

CREATE TABLE cliente (
    id_cliente INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    n_pasaporte INT (30) NOT NULL,
    nombre VARCHAR (10) NOT NULL,
    edad INT(10) NOT NULL,
    nacionalidad VARCHAR (10) NOT NULL 
);

CREATE TABLE cliente_reserva (
    id_cliente_reserva INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_cliente INT(10) NOT NULL,
     id_reservacion INT(10) NOT NULL,
      FOREIGN KEY ( id_cliente) REFERENCES cliente ( id_cliente) ON DELETE CASCADE,
      FOREIGN KEY (id_reservacion) REFERENCES reservacion (id_reservacion) ON DELETE CASCADE 
);

CREATE TABLE vuelo(
    id_vuelo INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    origen VARCHAR(200) NOT NULL,
    destino VARCHAR(200) NOT NULL,
    numero_pasajeros INT(10) NOT NULL,
    precio_vuelo INT(10) NOT NULL
);

CREATE TABLE cliente_vuelo(
    id_cliente_vuelo INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_cliente INT(10) NOT NULL,
     id_vuelo INT(10) NOT NULL,
      FOREIGN KEY ( id_cliente) REFERENCES cliente ( id_cliente) ON DELETE CASCADE,
      FOREIGN KEY (id_vuelo) REFERENCES vuelo (id_vuelo) ON DELETE CASCADE  
);

INSERT INTO hoteles (nombre, precio, estrellas, ubicacion) VALUES
('Fen',5000,1,"Cali"),
('Hadd',5000,2,"Buga"),
('Boli',5000,3,"Pasto"),
('Mino',5000,4,"Cali"),
('Tebi',5000,5,"Bogota");

INSERT INTO reservacion (fecha, precio, id_hotel) VALUES
('01/01/2001',4000,1),
('02/01/2001',4000,2),
('03/01/2001',4000,3),
('04/01/2001',4000,4),
('05/01/2001',4000,5);


INSERT INTO cliente (n_pasaporte, nombre, edad, nacionalidad) VALUES
(12,"Kaleft",18,"Colombia"),
(13,"Santiago",21,"Colombia"),
(14,"Minota",31,"Colombia"),
(15,"Cristian",42,"Colombia"),
(16,"Juan",55,"Colombia");

INSERT INTO cliente_reserva (id_cliente, id_reservacion) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

INSERT INTO vuelo (origen, destino, numero_pasajeros, precio_vuelo) VALUES
("Cali","Peru",100,8000),
("Cartago","Peru",100,2002),
("Popayan","Cali",100,5111),
("Vichada","Cali",100,1000),
("Peru","Cali",100,1000);

INSERT INTO cliente_vuelo (id_cliente, id_vuelo) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

UPDATE hoteles SET estrellas = 5 WHERE id_hotel = 1;
UPDATE hoteles SET estrellas = 5 WHERE id_hotel = 1;
UPDATE hoteles SET estrellas = 5 WHERE id_hotel = 1;

DELETE FROM vuelo WHERE id_vuelo = 1;
DELETE FROM cliente WHERE id_cliente = 2;
DELETE FROM reservacion WHERE id_reservacion = 3;





