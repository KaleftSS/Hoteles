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




