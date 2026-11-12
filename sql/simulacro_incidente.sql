-- =====================================================================
-- Archivo: sql/simulacro_incidente.sql
-- Unidad 5 - Parte C: Simulacro de Acceso Indebido y Escalamiento
-- =====================================================================

-- 1. Intentos fallidos de autenticación (Simulación en log)
SELECT 'Intento de autenticación fallido 1 para usuario admin' AS log_simulado;
SELECT 'Intento de autenticación fallido 2 para usuario admin' AS log_simulado;

-- 2. Conexión exitosa y lectura masiva no autorizada
SELECT * FROM usuario;

-- 3. Intento indebido de escalamiento de privilegios por parte de un usuario estándar
-- Este comando DEBE fallar en producción debido a las restricciones de roles asignadas.
GRANT admin_datos TO app_web;