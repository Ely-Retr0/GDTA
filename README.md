# 🛠️ GDTA — Sistema de Gestión de Taller Automotriz y Refaccionaria

<div align="center">

![Java](https://img.shields.inline/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![MariaDB](https://img.shields.io/badge/MariaDB-03589C?style=for-the-badge&logo=mariadb&logoColor=white)
![Java Swing](https://img.shields.io/badge/Java_Swing-007396?style=for-the-badge&logo=java&logoColor=white)
![Security](https://img.shields.io/badge/BCrypt-Cost_12-critical?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Production_Ready-success?style=for-the-badge)

</div>

**GDTA** es un sistema ERP de escritorio robusto y modular diseñado para la administración integral de talleres mecánicos y refaccionarias. Desarrollado con arquitectura nativa en Java y persistencia relacional, prioriza la portabilidad, el rendimiento offline y un esquema estricto de seguridad de datos.

---

## 📋 Tabla de Contenidos
1. [Características Principales](#-características-principales)
2. [Arquitectura y Estructura de la Base de Datos](#-arquitectura-de-la-base-de-datos)
3. [Guía de Instalación Rápida](#-guía-de-instalación-rapida)
4. [Credenciales por Defecto](#-credenciales-por-defecto)
5. [Tecnologías Utilizadas](#-tecnologías-utilizadas)

---

## 🚀 Características Principales

*   🔐 **Seguridad Avanzada:** Autenticación de usuarios blindada mediante hashing con **BCrypt (cost 12)** y bitácoras de auditoría en tiempo real.
*   📦 **Control de Inventario Transaccional:** Gestión de refacciones con control de stock mínimo y prevención de condiciones de carrera.
*   💻 **Portabilidad Total:** Empaquetado nativo para Windows (`GDTA.exe`) con JRE embebido para ejecución inmediata sin requerir instalaciones previas de Java en el equipo del cliente.
*   📊 **Módulos Operativos Integrados:** Control absoluto de clientes, vehículos, órdenes de servicio, citas programadas, transacciones de pago y ventas diarias.

---

## 🗄️ Arquitectura de la Base de Datos

El sistema utiliza un esquema relacional optimizado en motor InnoDB (`bdgdta`) que incluye:
*   `usuarios`: Credenciales de acceso, roles (`ADMIN`, `MECANICO`, `CAJERO`) y estados activos.
*   `clientes` y `vehiculos`: Relación referencial en cascada para el historial automotriz.
*   `inventario`: Control de stock, precios y umbrales mínimos de refacciones.
*   `ordenes` y `detalles_orden`: Seguimiento de diagnósticos, estados de trabajo y refacciones utilizadas.
*   `citas`, `pagos`, `ventas`, `auditoria` y `configuracion`: Bitácoras y registros transaccionales del negocio.

---

## ⚙️ Guía de Instalación Rápida

1. **Base de Datos:**
   * Importa el archivo **`estructura_bdgdta.sql`** incluido en este repositorio en tu servidor MySQL local (XAMPP, WAMP o consola) utilizando herramientas como DBeaver o phpMyAdmin.
2. **Ejecución del Sistema:**
   * Descomprime el paquete portable y ejecuta directamente **`GDTA.exe`**.

---

## 🔑 Credenciales por Defecto

Al inicializar la base de datos por primera vez, el sistema crea un usuario administrador por defecto:
*   **Usuario:** `admin`
*   **Contraseña:** `admin123`
*(Se recomienda encarecidamente actualizar las credenciales o la contraseña tras el primer inicio de sesión).*

---

## 🛠️ Tecnologías Utilizadas

*   **Lenguaje:** Java SE (Swing / AWT para interfaz gráfica de escritorio)
*   **Base de Datos:** MySQL / MariaDB (Driver JDBC)
*   **Seguridad:** jBCrypt
*   **Empaquetado:** Launch4j (Generador de ejecutables nativos) + Eclipse Temurin JRE Portable

---

<div align="center">
  <em>Desarrollado bajo un enfoque de arquitectura limpia y alta disponibilidad local.</em>
</div>
