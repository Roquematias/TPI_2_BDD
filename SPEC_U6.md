# SPEC_U6.md - Plan de Mantenimiento Food Store

- **Respaldo de foodstore**: Frecuencia Diaria. Evidencia: Archivo `.dump` comprimido en formato custom y log de ejecución exitosa de `pg_dump`.
- **Chequeo de salud**: Frecuencia Diaria. Evidencia: Salida de consultas sobre `pg_stat_database`, tamaño de base y actividad de conexiones.
- **Revisión de mantenimiento**: Frecuencia Semanal. Evidencia: Análisis de tuplas muertas (`n_dead_tup`) y estado del autovacuum.
- **Restauración de prueba**: Frecuencia Semanal. Evidencia: Restauración exitosa en `foodstore_restore_test` validada mediante control de filas y restricciones lógicas.