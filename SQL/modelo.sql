BEGIN TRANSACTION;

DROP TABLE IF EXISTS mensajes CASCADE;
CREATE TABLE mensajes (
    pk bigserial NOT NULL,
    fecha timestamp NOT NULL DEFAULT NOW(),
    mensaje text,
    rut bigint NOT NULL DEFAULT '1',
    PRIMARY KEY (pk)
);

DROP TABLE IF EXISTS accesos CASCADE;
CREATE TABLE accesos (
    pk bigserial NOT NULL,
    fecha timestamp NOT NULL DEFAULT NOW(),
    rut bigint NOT NULL,
    ip varchar(255) NOT NULL,
    accion varchar(255) NOT NULL,
    UNIQUE (fecha, rut, accion),
    PRIMARY KEY (pk)
);



DROP TABLE IF EXISTS paises CASCADE;
CREATE TABLE paises (
    pk serial NOT NULL,
    cod_num int NOT NULL,
    alfa_tres varchar(3) NOT NULL,
    alfa_dos varchar(2) NOT NULL,
    nombre varchar(255) NOT NULL,
    UNIQUE (cod_num, alfa_dos, alfa_tres),
    UNIQUE (nombre),
    UNIQUE (alfa_dos),
    PRIMARY KEY (pk)
);


DROP TABLE IF EXISTS geo_ips CASCADE;
CREATE TABLE geo_ips (
    pk bigserial NOT NULL,
    red inet NOT NULL,
    pais_fk int NOT NULL REFERENCES paises(pk) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (red),
    PRIMARY KEY (pk)
);

DROP TABLE IF EXISTS sistemas_operativos CASCADE;
CREATE TABLE sistemas_operativos (
    pk serial NOT NULL,
    nombre varchar(255) NOT NULL,
    version varchar(255) NOT NULL,
    descripcion text,
    bits int NOT NULL DEFAULT 32,
    propietario varchar(255) NOT NULL,
    UNIQUE (nombre,version,bits),
    PRIMARY KEY (pk)
);


DROP TABLE IF EXISTS browsers CASCADE;
CREATE TABLE browsers (
    pk serial NOT NULL,
    nombre varchar(255) NOT NULL,
    version varchar(255) NOT NULL,
    propietario varchar(255) NOT NULL,
    bits int NOT NULL DEFAULT 32,
    so_fk int NOT NULL REFERENCES sistemas_operativos(pk) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (nombre,version,bits),
    PRIMARY KEY (pk)
);

COMMIT;
