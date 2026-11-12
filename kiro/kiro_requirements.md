# Requisitos de Sincronización Móvil (Food Store)

## REQ-01 (Semáforo Amarillo - Cambio de Precio)
WHEN el precio actual en el servidor es distinto del precio visto en la tablet
THE SYSTEM SHALL marcar la solicitud como CONFLICTO en `cola_sync`.
- **Caso de Prueba**: C2 (Subir precio en el servidor luego de armar borrador).

## REQ-02 (Semáforo Rojo - Quiebre de Stock)
WHEN la cantidad solicitada en el borrador supera el stock actual del servidor
THE SYSTEM SHALL marcar la solicitud como RECHAZADO en `cola_sync`.
- **Caso de Prueba**: C3 (Solicitar más unidades de las disponibles en la instantánea).

## REQ-03 (Semáforo Rojo - Producto Dado de Baja)
WHEN un producto del borrador ha sido eliminado (baja lógica) en el servidor
THE SYSTEM SHALL marcar la solicitud como RECHAZADO en `cola_sync`.
- **Caso de Prueba**: C4 (Dar de baja lógica un producto antes de sincronizar).

## REQ-04 (Semáforo Verde - Sincronización Válida)
WHEN todos los productos existen, están disponibles, tienen stock y conservan el precio
THE SYSTEM SHALL marcar la solicitud como SIMULADO_APROBADO en `cola_sync`.
- **Caso de Prueba**: C5 (Borrador sin modificaciones en el servidor).