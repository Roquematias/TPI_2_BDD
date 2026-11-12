-- =====================================================================
-- Archivo: sql/roles.sql
-- Unidad 5 - Parte A: Roles y Mínimos Privilegios en Food Store
-- =====================================================================

-- 1. Eliminación preventiva de roles si existen
DROP ROLE IF EXISTS app_web;
DROP ROLE IF EXISTS admin_datos;
DROP ROLE IF EXISTS rol_app_lectura;
DROP ROLE IF EXISTS rol_app_escritura;
DROP ROLE IF EXISTS rol_soporte;
DROP ROLE IF EXISTS rol_reportes;

-- 2. Creación de Roles de Grupo (sin LOGIN)
CREATE ROLE rol_app_lectura NOLOGIN;
CREATE ROLE rol_app_escritura NOLOGIN;
CREATE ROLE rol_soporte NOLOGIN;
CREATE ROLE rol_reportes NOLOGIN;

-- 3. Creación de Roles de Login
CREATE ROLE app_web WITH LOGIN PASSWORD 'PasswordSeguraApp2026!';
CREATE ROLE admin_datos WITH LOGIN SUPERUSER PASSWORD 'PasswordAdmin2026!';

-- 4. Asignación de Privilegios a Roles de Grupo
-- Lectura general para la aplicación
GRANT SELECT ON ALL TABLES IN SCHEMA public TO rol_app_lectura;

-- Escritura controlada sobre operaciones de venta
GRANT SELECT, INSERT, UPDATE ON pedido, detalle_pedido TO rol_app_escritura;

-- Privilegio restringido a nivel de columna (Protección de datos sensibles)
GRANT SELECT (id, nombre, email, fecha_alta) ON usuario TO rol_soporte;

-- Acceso a vistas analíticas para reportes
GRANT SELECT ON ALL TABLES IN SCHEMA public TO rol_reportes;

-- 5. Asignación de membresías a roles de login
GRANT rol_app_lectura TO app_web;
GRANT rol_app_escritura TO app_web;

-- 6. Políticas por defecto para tablas futuras
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO rol_app_lectura;