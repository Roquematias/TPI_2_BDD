-- =====================================================================
-- Archivo: sql/usuario_anon.sql
-- Unidad 5 - Parte D: Anonimización de datos de usuarios
-- =====================================================================

CREATE TABLE usuario_anon AS
SELECT 
    id,
    'Usuario_' || id AS nombre,
    'user_' || id || '@anonimizado.local' AS email,
    rol,
    fecha_alta
FROM usuario;

-- Verificación de equivalencia en agregaciones entre la tabla real y la anonimizada
SELECT rol, COUNT(*) AS cantidad FROM usuario GROUP BY rol ORDER BY rol;
SELECT rol, COUNT(*) AS cantidad FROM usuario_anon GROUP BY rol ORDER BY rol;