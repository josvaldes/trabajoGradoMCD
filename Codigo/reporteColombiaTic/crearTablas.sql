-- Crear la tabla proveedores
CREATE TABLE proveedores (
    id_proveedor INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL UNIQUE
);

-- Crear la tabla departamentos
CREATE TABLE departamentos (
    id_departamento INT IDENTITY(1,1) PRIMARY KEY,
    codigo_dane NVARCHAR(10) NOT NULL UNIQUE,
    nombre NVARCHAR(255) NOT NULL
);

-- Crear la tabla municipios
CREATE TABLE municipios (
    id_municipio INT IDENTITY(1,1) PRIMARY KEY,
    codigo_dane NVARCHAR(10) NOT NULL UNIQUE,
    nombre NVARCHAR(255) NOT NULL,
    id_departamento INT NOT NULL FOREIGN KEY REFERENCES departamentos(id_departamento)
);

-- Crear la tabla segmentos
CREATE TABLE segmentos (
    id_segmento INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(50) NOT NULL UNIQUE
);

-- Crear la tabla tecnologias
CREATE TABLE tecnologias (
    id_tecnologia INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL UNIQUE
);

-- Crear la tabla servicios
CREATE TABLE servicios (
    id_servicio INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL UNIQUE
);

-- Crear la tabla reporte_trimestral
CREATE TABLE reporte_trimestral (
    id_reporte INT IDENTITY(1,1) PRIMARY KEY,
    anio INT NOT NULL,
    trimestre INT NOT NULL,
    id_proveedor INT NOT NULL FOREIGN KEY REFERENCES proveedores(id_proveedor),
    id_municipio INT NOT NULL FOREIGN KEY REFERENCES municipios(id_municipio),
    id_segmento INT NOT NULL FOREIGN KEY REFERENCES segmentos(id_segmento),
    id_tecnologia INT NOT NULL FOREIGN KEY REFERENCES tecnologias(id_tecnologia),
    id_servicio INT NOT NULL FOREIGN KEY REFERENCES servicios(id_servicio),
    ingresos DECIMAL(20, 2),
    lineas_activas INT,
    lineas_retiradas INT,
    lineas_prepago INT,
    lineas_pospago INT,
    trafico_mb DECIMAL(20, 2),
    consumo_prepago DECIMAL(20, 2),
    consumo_pospago DECIMAL(20, 2),
    total_lineas INT
);