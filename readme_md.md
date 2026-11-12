# Trabajo Práctico Integrador (TPI) - Bases de Datos II
## Proyecto: Food Store (Persistencia Políglota)

Repositorio oficial del Trabajo Práctico Integrador correspondiente a las Unidades 4 a 8 de la **Tecnicatura Universitaria en Programación (UTN - FRM)**.

---

### 📁 Estructura del Repositorio

```text
TPI_2_BDD/
├── README.md                      # Instrucciones generales del proyecto
├── BITACORA.md                    # Registro de uso de IA y validaciones
├── SPEC_U6.md                     # Plan de mantenimiento (Unidad 6)
├── backup_foodstore.ps1           # Script de respaldo automatizado (PowerShell)
├── sql/                           # Scripts relacionales (PostgreSQL 16+)
│   ├── tp_fnbc_control_lote.sql
│   ├── tp_desnormalizacion_top_categorias.sql
│   ├── roles.sql
│   ├── auditoria_test.sql
│   ├── simulacro_incidente.sql
│   ├── usuario_anon.sql
│   ├── health_check.sql
│   └── maintenance.sql
├── nosql/                         # Módulo NoSQL (MongoDB)
│   ├── consultas_mongodb.js
│   └── consultas_postgresql.sql
├── movil/                         # Módulo SQLite para dispositivos móviles
│   ├── schema_sqlite.sql
│   ├── pruebas_sqlite.sql
│   └── semaforo.sql
├── kiro/                          # Especificaciones de ingeniería de requerimientos
│   ├── kiro_requirements.md
│   └── duia.md
└── docs/                          # Informes técnicos en formato PDF / HTML
    ├── Informe Técnico Unidad 4 - Normalización y Desnormalización.html
    ├── Informe Técnico Unidad 5 - Administración y Seguridad.html
    ├── Informe Técnico Unidad 6 - Mantenimiento y Recuperación.html
    ├── Informe Técnico Unidad 7 - NoSQL y MongoDB.html
    └── Informe Técnico Unidad 8 - Base Móvil e Integración.html
```

---

### 🚀 Inicialización y Ejecución

#### 1. Módulo Relacional (PostgreSQL 16+)
1. Crear la base de datos: `CREATE DATABASE foodstore;`
2. Ejecutar los scripts de la carpeta `sql/` en orden correlativo (Unidades 4, 5 y 6).

#### 2. Módulo NoSQL (MongoDB)
1. Abrir la consola interactiva `mongosh`.
2. Ejecutar el script documental `nosql/consultas_mongodb.js`.
3. Consultar las equivalencias relacionales en `nosql/consultas_postgresql.sql`.

#### 3. Módulo Móvil (SQLite)
1. Crear el esquema estricto ejecutando `movil/schema_sqlite.sql`.
2. Probar transacciones locales con `movil/pruebas_sqlite.sql`.
3. Evaluar la sincronización con el servidor mediante el semáforo en `movil/semaforo.sql`.

---

### 👨‍💻 Autor
* **Matias** - Tecnicatura Universitaria en Programación (UTN FRM)