# Proyecto Day 2: Carga y Exploración de Bases de Datos

Este proyecto corresponde al **Día 2** del bootcamp de SQL. En esta práctica nos enfocamos en la restauración/carga de bases de datos relacionales en nuestro servidor local de MySQL y en la ejecución de consultas básicas de exploración para validar la estructura del esquema.

---

## 📋 Descripción del Proyecto

El objetivo de este día es dominar el proceso de importación de bases de datos externas y familiarizarse con el entorno de trabajo mediante comandos de inspección y lectura rápida de metadatos. 

Para este ejercicio práctico se utiliza la base de datos de **Netflix** (`netflix_db`).

---

## 🛠️ Requisitos Previos

Antes de ejecutar los scripts, asegúrate de contar con:
*   **MySQL Server** instalado y activo.
*   Un cliente SQL (como **MySQL Workbench**, **DBeaver** o la terminal de comando).
*   El archivo de respaldo o script de creación de `netflix_db`.

---

## 🚀 Instrucciones de Configuración y Uso

### 1. Cargar la Base de Datos
Para importar y restaurar la base de datos en tu servidor local, sigue estos pasos:

1. Abre tu cliente SQL de preferencia y conéctate a tu servidor.
2. Abre el archivo de respaldo (`.sql`) que contiene la estructura y datos de `netflix_db`.
3. Ejecuta todo el script para crear la base de datos y poblar las tablas correspondientes.

### 2. Exploración Inicial (Show Tables)
Una vez cargada la base de datos, ejecuta el archivo de consulta incluido en este repositorio para verificar que todo se haya importado correctamente. El script realiza las siguientes operaciones básicas:

```sql
-- Seleccionar la base de datos de Netflix para su uso
USE netflix_db;

-- Listar todas las tablas disponibles en el esquema
SHOW TABLES;