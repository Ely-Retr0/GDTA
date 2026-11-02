-- =====================================================================
-- Sistema GDTA - Estructura de Base de Datos para Producción / Portabilidad
-- Motor: MySQL / MariaDB (Compatible con XAMPP, WAMP o Servidor Local)
-- =====================================================================

CREATE DATABASE IF NOT EXISTS bdgdta CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bdgdta;

-- 1. Tabla de Usuarios y Credenciales (Seguridad BCrypt)
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    rol ENUM('ADMIN', 'MECANICO', 'CAJERO') NOT NULL DEFAULT 'CAJERO',
    activo TINYINT(1) DEFAULT 1,
    ultimo_acceso TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB;

-- 2. Tabla de Clientes del Taller
CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(25)
) ENGINE=InnoDB;

-- 3. Tabla de Vehículos Registrados
CREATE TABLE IF NOT EXISTS vehiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    anio INT NOT NULL,
    placas VARCHAR(20) NOT NULL,
    color VARCHAR(30),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 4. Tabla de Inventario y Refacciones
CREATE TABLE IF NOT EXISTS inventario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10,2) NOT NULL,
    cantidad INT NOT NULL DEFAULT 0,
    cant_min INT NOT NULL DEFAULT 5
) ENGINE=InnoDB;

-- 5. Tabla de Órdenes de Servicio
CREATE TABLE IF NOT EXISTS ordenes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vehiculo INT NOT NULL,
    estado VARCHAR(50) NOT NULL DEFAULT 'PENDIENTE',
    fecha_ingreso DATE NOT NULL,
    fecha_entrega DATE NULL,
    diagnostico TEXT,
    observaciones TEXT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculos(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 6. Tabla de Detalles de Órdenes
CREATE TABLE IF NOT EXISTS detalles_orden (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_orden INT NOT NULL,
    id_refaccion INT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_orden) REFERENCES ordenes(id) ON DELETE CASCADE,
    FOREIGN KEY (id_refaccion) REFERENCES inventario(id) ON DELETE SET NULL
) ENGINE=InnoDB;

-- 7. Tabla de Citas del Taller
CREATE TABLE IF NOT EXISTS citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_cita DATETIME NOT NULL,
    motivo TEXT,
    estado VARCHAR(30) DEFAULT 'PROGRAMADA',
    FOREIGN KEY (id_cliente) REFERENCES clientes(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 8. Tabla de Pagos y Transacciones
CREATE TABLE IF NOT EXISTS pagos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_orden INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    metodo_pago VARCHAR(50) NOT NULL,
    fecha_pago TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_orden) REFERENCES ordenes(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- 9. Tabla de Historial de Ventas
CREATE TABLE IF NOT EXISTS ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    nom_cli VARCHAR(100) NOT NULL,
    met_pag VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL,
    total DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB;

-- 10. Tabla de Auditoría del Sistema
CREATE TABLE IF NOT EXISTS auditoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    accion VARCHAR(50) NOT NULL,
    detalle VARCHAR(250),
    ip VARCHAR(45),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 11. Tabla de Configuración Global del Sistema
CREATE TABLE IF NOT EXISTS configuracion (
    clave VARCHAR(50) PRIMARY KEY,
    clave_hash VARCHAR(255) NULL,
    valor TEXT NULL
) ENGINE=InnoDB;

-- =====================================================================
-- Usuario Administrador Inicial por Defecto
-- Usuario: admin | Contraseña temporal: admin123 (Hasheada con BCrypt)
-- =====================================================================
INSERT INTO usuarios (username, password_hash, nombre, rol, activo) 
VALUES ('admin', '$2a$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4J/8Kq8K2S', 'ADMINISTRADOR GENERAL', 'ADMIN', 1)
ON DUPLICATE KEY UPDATE username=username;
