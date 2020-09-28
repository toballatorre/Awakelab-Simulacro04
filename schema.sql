-- CREACION DE TABLAS

-- PACIENTES
CREATE TABLE pacientes(
    idPaciente INTEGER NOT NULL,
    rutPaciente VARCHAR2(11 CHAR) NOT NULL,
    nombre VARCHAR2(50 CHAR) NOT NULL,
    apellido VARCHAR2(50 CHAR) NOT NULL,
    -- Creacion de Primary Key
    CONSTRAINT paciente_PK
        PRIMARY KEY (idPaciente)
);

-- ESPECIALIDADES
-- Con una relación de One to Many con la tabla DOCTORES
CREATE TABLE especialidades(
    idEspecialidad INTEGER NOT NULL,
    descripcion VARCHAR2(50 CHAR),
    -- Creacion de Primary Key
    CONSTRAINT especialidades_PK
        PRIMARY KEY (idEspecialidad)
);

-- DOCTORES
-- Con una relación de Many to One con la tabla ESPACIALIDADES
CREATE TABLE doctores(
    idDoctor INTEGER NOT NULL,
    rutDoctor VARCHAR2(11 CHAR),
    nombre VARCHAR2(50 CHAR),
    apellido VARCHAR2(50 CHAR),
    idEspecialidad NOT NULL,
    -- Creacion de Primary Key
    CONSTRAINT doctores_PK
        PRIMARY KEY (idDoctor),
    -- Creción de Foreign key
    CONSTRAINT doctores_especialidades_FK
        FOREIGN KEY (idEspecialidad)
        REFERENCES especialidades (idEspecialidad)
);

-- AGENDAS
-- Con una relación de One to Many con las tablas DOCTORES y PACIENTES
CREATE TABLE agendas(
    idPaciente INTEGER NOT NULL,
    idDoctor INTEGER NOT NULL,
    idAgenda INTEGER NOT NULL,
    fecha DATE NOT NULL,
    horaDesde DATE NOT NULL,
    duracion INTEGER NOT NULL,
    CONSTRAINT agendas_PK
       PRIMARY KEY (idAgenda),
    -- Creción de dos por separado Foreign key
    -- FK con Pacientes
    CONSTRAINT agendas_pacientes_FK
        FOREIGN KEY (idPaciente)
        REFERENCES pacientes (idPaciente),
    -- FK con doctores
    CONSTRAINT agendas_doctores_FK
        FOREIGN KEY (idDoctor)
        REFERENCES doctores (idDoctor)
);

ALTER TABLE agendas
    MODIFY duracion DEFAULT 15;
    
COMMIT WORK;