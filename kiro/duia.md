# Declaración de Uso de IA (DUIA) - Unidad 8

## Bitácora de Prompts e Interacciones

| Prompt Enviado | Respuesta Resumida de la IA | Validación / Corrección Humana Aplicada |
| :--- | :--- | :--- |
| "Genera el script del semáforo para actualizar la base de PostgreSQL directamente desde SQLite." | Propuso ejecutar un `UPDATE` en PostgreSQL usando datos de la tablet. | **DESCARTADO**. Violaría la regla de oro: *"El móvil propone, el servidor dispone"*. El semáforo solo corre localmente en SQLite evaluando `snapshot_servidor`. |
| "Genera las tablas SQLite con tipos de datos estándar VARCHAR e INT." | Creó tablas relajadas sin tipo estricto. | **CORREGIDO**. Se aplicó la cláusula `STRICT` de SQLite 3.37+ y los tipos numéricos explícitos (`INTEGER`, `TEXT`) con montos en centavos. |
| "Revisa los scripts del proyecto con OpenCode en busca de errores." | Encontró un `JOIN` no indexado en `tp_desnormalizacion_top_categorias.sql`. | **ACEPTADO**. Se agregó un índice único sobre la vista materializada para acelerar el refresco y consulta. |

---

## Code Reviewasistido por IA (3 Hallazgos)

1. **Unidad 4 (Desnormalización)**:
   - *Hallazgo*: Falta de índice único en la vista materializada de top categorías.
   - *Decisión*: **Aceptado y corregido**. Se agregó `CREATE UNIQUE INDEX idx_mv_top_cat`.
2. **Unidad 5 (Roles)**:
   - *Hallazgo*: La IA sugirió asignar `GRANT ALL ON SCHEMA public TO rol_app_escritura`.
   - *Decisión*: **Descartado con fundamento**. Otorgaría DDL no autorizado a la app. Se limitó solo a `INSERT, UPDATE` en `pedido` y `detalle_pedido`.
3. **Unidad 8 (SQLite)**:
   - *Hallazgo*: Los precios estaban guardados como `REAL` (flotantes).
   - *Decisión*: **Corregido**. Se cambió el diseño a `INTEGER` almacenando importes en centavos para prevenir errores de redondeo IEEE 754.