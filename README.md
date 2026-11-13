<div align="center">

<img width="378" height="460" alt="unnamed" src="https://github.com/user-attachments/assets/91d37989-46c1-49f3-b71e-f323c6bf762e" />


# Gestion Digital de Taller Automotriz y Refaccionaria.

<div align="center">

![Java 21+](https://img.shields.io/badge/Java_21+-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![TiDB Cloud](https://img.shields.io/badge/TiDB_Cloud-E30C34?style=for-the-badge&logo=tidb&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL_%2F_MariaDB-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Java Swing UI](https://img.shields.io/badge/Custom_Swing_UI-007396?style=for-the-badge&logo=java&logoColor=white)
![Groq AI](https://img.shields.io/badge/AI_Assistant-F55036?style=for-the-badge&logo=openai&logoColor=white)
![BCrypt Security](https://img.shields.io/badge/BCrypt-Cost_12-critical?style=for-the-badge&logo=letsencrypt&logoColor=white)
![Windows & Linux](https://img.shields.io/badge/Platform-Windows_%7C_Linux-2ea44f?style=for-the-badge&logo=linux&logoColor=white)
![Status](https://img.shields.io/badge/Status-Production_Ready-success?style=for-the-badge)

**Arquitectura ERP de alto rendimiento, sincronización en la nube en tiempo real, seguridad criptográfica y asistencia inteligente para la industria automotriz moderna.**

[Explorar Módulos](#-ecosistema-de-módulos-operativos) • [Arquitectura Cloud y BD](#-arquitectura-de-datos-híbrida-tidb-cloud--mysql) • [Seguridad](#-ingeniería-de-seguridad-y-auditoría) • [Instalación Multiplataforma](#-despliegue-e-instalación-multiplataforma) • [Visión y Escalabilidad](#-visión-y-escalabilidad-del-ecosistema)

</div>

---

## Propuesta de Valor

**GDTA (Gestión Digital de Taller Automotriz)** no es un simple registro administrativo; es un **ERP de misión crítica** diseñado desde cero para erradicar los cuellos de botella operativos de talleres mecánicos y refaccionarias: pérdida de historial clínico vehicular, descontrol de inventario, colisiones en agendas de servicio y falta de trazabilidad financiera.

Construido sobre **Java SE 21+** con un motor gráfico personalizado (`EstiloUI`) y respaldado por una arquitectura de base de datos distribuida en **TiDB Cloud** (100% compatible con MySQL/MariaDB local), GDTA combina la **velocidad de respuesta inmediata de una aplicación nativa de escritorio** con la **disponibilidad ubicua de la nube**. Cada clic, transacción, corte de caja y orden de reparación se ejecuta bajo estrictos controles de integridad referencial, validaciones en tiempo real y auditoría forense.

---

## Tabla de Contenidos

1. [Diferenciadores Técnicos Clave](#-diferenciadores-técnicos-clave)
2. [Ecosistema de Módulos Operativos](#-ecosistema-de-módulos-operativos)
3. [Ingeniería de Seguridad y Auditoría](#-ingeniería-de-seguridad-y-auditoría)
4. [Arquitectura de Datos Híbrida (TiDB Cloud & MySQL)](#-arquitectura-de-datos-híbrida-tidb-cloud--mysql)
5. [Motor Gráfico y Experiencia de Usuario (UX/UI)](#-motor-gráfico-y-experiencia-de-usuario-uxui)
6. [Despliegue e Instalación Multiplataforma](#-despliegue-e-instalación-multiplataforma)
7. [Credenciales de Acceso Inicial](#-credenciales-de-acceso-inicial)
8. [Stack Tecnológico](#-stack-tecnológico)
9. [Visión y Escalabilidad del Ecosistema](#-visión-y-escalabilidad-del-ecosistema)

---

## Diferenciadores Técnicos Clave

* **Sincronización Serverless en Tiempo Real (TiDB Cloud):** A diferencia de los sistemas tradicionales atrapados en una sola computadora local, GDTA se conecta mediante túneles seguros TLS/JDBC a un clúster distribuido en la nube. Múltiples estaciones de trabajo (Recepción, Taller, Caja, Gerencia) operan de forma concurrente sobre la misma fuente de verdad sin latencia perceptible.
* **Secuencialidad Estricta en Clústeres Distribuidos (`AUTO_ID_CACHE = 1`):** Optimización a nivel de motor en todas las tablas del esquema TiDB para garantizar identificadores primarios 100% continuos y legibles (`1, 2, 3...`), eliminando los saltos de bloques de memoria distribuida (`30001+`) sin sacrificar la integridad transaccional ACID.
* **Buscador Global Omnicanal Instantáneo (`Ctrl + F`):** Motor de indexación y consulta asíncrona con *debounce* inteligente (300 ms) y patrón *Singleton* de ventana única. Permite localizar en milisegundos clientes, diagnósticos de órdenes activas y existencias en inventario desde cualquier pantalla, navegando directamente al módulo correspondiente con un doble clic.
* **Asistente IA Automotriz Integrado:** Módulo de inteligencia artificial conectado vía API de inferencia ultrarrápida para soporte en diagnóstico mecánico, consulta operativa y asistencia técnica al personal del taller.
* **Blindaje de Entradas y Validación Temporal:** Sanitización en vivo a nivel de eventos de teclado (`KeyAdapter`), marcas de agua dinámicas (*watermarks* nativos en `Graphics2D`) y bloqueo lógico contra registros inconsistentes (imposibilidad de agendar citas en fechas u horas pasadas).
* **Portabilidad Absoluta Zero-Config (Windows & Linux):** Distribución autónoma con entorno de ejecución Java embebido para Windows (`GDTA.exe`) y scripts automatizados de instalación e integración de escritorio (`.desktop`) para distribuciones GNU/Linux (Debian, Arch/EndeavourOS, Ubuntu, Fedora).

---

## Ecosistema de Módulos Operativos

| Módulo | Capacidades Técnicas y Operativas |
| :--- | :--- |
| **🏠 Panel de Control (Dashboard)** | Vista ejecutiva de pantalla completa con métricas en tiempo real e indicadores clave de rendimiento (KPIs), más tarjetas de acceso rápido para operaciones frecuentes. |
| **👥 Clientes y Flotillas** | Registro integral de clientes con validación de teléfonos únicos, vinculación directa con WhatsApp y trazabilidad histórica de todos sus vehículos e intervenciones. |
| **🔧 Órdenes de Servicio** | Gestión del ciclo de vida completo de una reparación: ingreso del vehículo, diagnóstico técnico, asignación de refacciones desde inventario, cálculo de costos y transición de estados (`PENDIENTE`, `EN PROCESO`, `COMPLETADO`, `ENTREGADO`). |
| **📦 Inventario y Refaccionaria** | Control riguroso de existencias por marca, categoría y precio unitario. Alertas visuales de stock mínimo y descuento atómico de unidades al vincularse en ventas u órdenes. |
| **💳 Punto de Venta (POS) y Pagos** | Procesamiento ágil de ventas de mostrador y liquidación de órdenes de servicio. Generación de comprobantes y registro detallado de métodos de pago. |
| **📅 Agenda Inteligente de Citas** | Programación cronológica de recepciones con filtros rápidos (*Ver todas*, *Citas de hoy*), control de estados (`PENDIENTE`, `COMPLETADA`, `CANCELADA`) y validación estricta de calendario y reloj en tiempo real. |
| **🤖 Asistente IA** | Interfaz conversacional integrada dentro del ERP para apoyar a mecánicos y asesores de servicio con dudas técnicas, equivalencias de piezas y redacción de diagnósticos. |
| **🔐 Gestión de Usuarios y Roles** | Administración de cuentas del personal con control de acceso basado en roles (**RBAC**: `ADMIN`, `MECANICO`, `CAJERO`) y monitoreo de sesiones. |

---

## Ingeniería de Seguridad y Auditoría

GDTA aplica principios de **Seguridad por Diseño (*Security by Design*)** en cada capa de su arquitectura:

1. **Criptografía de Contraseñas con BCrypt (Cost 12):** Ninguna credencial se almacena o transmite en texto plano. Se emplea el algoritmo adaptativo *Blowfish* con sal aleatoria por usuario (`jBCrypt`), haciendo inviable cualquier ataque por diccionario o tablas *rainbow*.
2. **Prevención Total de Inyección SQL (SQLi):** El 100% de las interacciones con la base de datos se ejecutan exclusivamente mediante sentencias precompiladas y parametrizadas (`PreparedStatement`), separando de raíz la lógica de consulta de los datos ingresados por el usuario.
3. **Bitácora de Auditoría Inmutable (`Seguridad.registrarAuditoria`):** Cada evento crítico del sistema (inicios de sesión, creación de órdenes, agendamiento de citas, modificaciones de inventario y cambios de estado) queda registrado automáticamente en la tabla `auditoria` con marca de tiempo exacta, usuario ejecutor y detalle de la operación.
4. **Aislamiento de Credenciales de Infraestructura:** Las llaves de conexión a TiDB Cloud y tokens de API externa se gestionan mediante archivos de propiedades externos (`config.properties` / `api_key.txt`) excluidos del control de versiones público.

---

## Arquitectura de Datos Híbrida (TiDB Cloud & MySQL)

El esquema relacional (`bdgdta`) está diseñado en tercera forma normal (3NF) sobre motor transaccional compatible con **TiDB Serverless** y **MySQL 8.0+ / MariaDB**:

```text
bdgdta (Cluster TiDB Cloud / MySQL InnoDB — AUTO_ID_CACHE=1)
├── usuarios          # Credenciales (BCrypt), roles (ADMIN, MECANICO, CAJERO) y estado activo
├── clientes          # Directorio maestro con restricción UNIQUE en teléfono y contacto
│   ├── vehiculos     # (FK -> clientes.id) Placas, marca, modelo, año e historial
│   ├── citas         # (FK -> clientes.id) Fecha, hora, descripción y estado de agenda
│   └── ordenes       # (FK -> clientes.id, vehiculos.id) Diagnóstico, ingreso y estado
│       ├── detalles_orden # (FK -> ordenes.id, inventario.id) Refacciones y mano de obra
│       └── pagos     # (FK -> ordenes.id) Liquidaciones, montos y métodos de pago
├── inventario        # Catálogo de refacciones, marca, categoría, precio y stock
├── ventas            # Transacciones directas de mostrador (Refaccionaria)
└── auditoria         # Registro forense de eventos y trazabilidad operativa
