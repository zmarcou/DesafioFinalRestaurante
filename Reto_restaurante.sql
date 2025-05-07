CREATE DATABASE restaurante;
use restaurante;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cliente VARCHAR(50) UNIQUE,
    nombre_cliente VARCHAR(100) NOT NULL
);

CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_hora DATETIME NOT NULL,
    estado ENUM('En preparación', 'Listo', 'En entrega', 'Entregado') DEFAULT 'En preparación',
    tipo_pedido ENUM('Restaurante', 'Para llevar'),
    forma_pago ENUM('Efectivo', 'Tarjeta'),
    id_descuento INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_descuento) REFERENCES Descuento(id_descuento)
);

CREATE TABLE Descuento (
    id_descuento INT AUTO_INCREMENT PRIMARY KEY,
    tipo_descuento ENUM('Descuento', 'Membresía'),
    valor_descuento DECIMAL(5), 
    codigo_descuento VARCHAR(50) UNIQUE
);

CREATE TABLE Plato (
    id_plato INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plato VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

CREATE TABLE Ingrediente (
    id_ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_ingrediente VARCHAR(100) NOT NULL,
    costo_adicional DECIMAL(10,2) DEFAULT 0
);

CREATE TABLE Pedido_plato (
    id_pedido_plato INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_plato INT,
    cantidad INT DEFAULT 1,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_plato) REFERENCES Plato(id_plato)
);

CREATE TABLE Personalizacion_Pedido (
    id_personalizacion INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido_plato INT,
    id_ingrediente INT,
    accion ENUM('Añadir', 'Eliminar'),
    FOREIGN KEY (id_pedido_plato) REFERENCES Pedido_Plato(id_pedido_plato),
    FOREIGN KEY (id_ingrediente) REFERENCES Ingrediente(id_ingrediente)
);

CREATE TABLE Queja (
    id_queja INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    descripcion TEXT,
    estado_queja ENUM('Pendiente', 'Aceptada', 'Rechazada') DEFAULT 'Pendiente',
    resolucion ENUM('Devolver dinero', 'Rehacer pedido', 'Sin acción'),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);
