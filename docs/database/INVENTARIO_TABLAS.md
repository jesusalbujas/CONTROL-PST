# Inventario de tablas usadas por NexoInt, Dory y Jarvis

**Corte de revisión:** 25 de octubre de 2026.  
**Fuente:** referencias estáticas encontradas en los proyectos locales de NexoInt y `discord_bot`: registro de entidades, consultas PostgREST/SQL y migraciones versionadas.  
**Importante:** este inventario documenta objetos que el código consume o registra; no es una introspección del catálogo en producción. Que una tabla aparezca aquí no confirma por sí solo que exista en todos los ambientes, que tenga datos o que la ventana esté habilitada para todos los roles. Los nombres y columnas deben contrastarse con el esquema Supabase desplegado antes de usarlos como contrato.

## Cómo leer el inventario

- **Compartida:** NexoInt y Dory/Jarvis consultan o modifican la tabla.
- **NexoInt:** la usa la aplicación web directamente o mediante componentes/entidades.
- **Dory/Jarvis:** la usa el bot o sus flujos del lado servidor.
- **Entidad registrada:** hay una definición en el registro genérico de entidades, aunque eso no implica que actualmente aparezca en el menú ni que sea parte del alcance vigente.
- Las tablas del esquema `dory` se presentan con su esquema. Las tablas de repositorios también residen en `dory`, aunque algunos nombres no llevan el prefijo `dory_`.

## 1. Identidad, roles y permisos

| Tabla | Uso documentado | Consumidor(es) |
|---|---|---|
| `dory.dory_user` | Perfil de usuario de la aplicación; vincula identidad de autenticación, empleado y datos del perfil. | Compartida |
| `dory.dory_employee` | Ficha de empleado/consultor, Discord, cumpleaños, datos de contacto y vínculo organizacional; se usa para asignaciones y perfiles. | Compartida |
| `dory.dory_role` | Catálogo de roles activos del sistema. | Compartida |
| `dory.user_role` | Asignación de roles a identidades autenticadas. | Compartida |
| `dory.dory_role_permissions` | Matriz de permisos por rol, ventana y acción. Las políticas RLS consultan esta matriz para autorizar operaciones. | Compartida |
| `dory.dory_window` | Catálogo de ventanas/recursos usado para nombrar permisos y sincronizar accesos. | NexoInt; Dory/Jarvis en validaciones de acceso |
| `dory.dory_api_token` | Tokens personales de la API de Dory: propietario, hash, alcances, expiración, revocación y último uso. El secreto sin hash no debe persistirse. | Dory/Jarvis; NexoInt indirectamente mediante API |
| `dory.dory_org` | Catálogo de organizaciones internas consultado por herramientas de exploración y contemplado en el control de permisos de entidades. | NexoInt (referencias/entidad genérica) |

La autenticación primaria pertenece a Supabase Auth. `auth.users` es administrada por Supabase, no es una tabla propia del esquema `dory`; NexoInt relaciona el usuario autenticado con `dory_user` y `user_role`.

## 2. Casos, catálogos de soporte y conversación

| Tabla | Uso documentado | Consumidor(es) |
|---|---|---|
| `dory.dory_thread` | Registro de ticket o solicitud interna: identificadores Discord/NexoInt, compañía, canal, consultor, estado de ticket y atención, fechas, clasificación, tiempos y atributos de seguimiento. | Compartida |
| `dory.dory_client` | Compañías/clientes y su identidad externa estable de Discord. | Compartida |
| `dory.dory_client_group` | Grupos de compañías para organizar clientes. | NexoInt |
| `dory.dory_client_group_member` | Relación entre un grupo y las compañías que lo integran. | NexoInt |
| `dory.dory_channel` | Canales asociados a compañía; guarda la correspondencia estable con Discord y se valida al crear/sincronizar casos. | Compartida |
| `dory.dory_thread_status` | Catálogo de estados de atención/seguimiento del caso; no equivale a abierto/cerrado. | Compartida |
| `dory.dory_pending_on` | Catálogo de quién tiene la siguiente acción pendiente; no tiene que asignarse automáticamente al crear un caso. | Compartida |
| `dory.dory_follow_up_policy` | Políticas de seguimiento asociadas a casos y consumidas por los flujos de recordatorio. | Compartida |
| `dory.dory_topic` | Catálogo de tópicos de soporte. | Compartida |
| `dory.dory_typology` | Catálogo de tipologías de soporte. | Compartida |
| `dory.dory_message_template` | Plantillas de mensajes administradas/seleccionadas por flujos de Dory. | Compartida |
| `dory.dory_message` | Registros de mensajes asociados a casos, conservados históricamente. La ventana de mensajes se retiró, pero el modelo/filas permanecen y Dory elimina las relacionadas al borrar el caso. El visor de conversación actual consulta Discord mediante la API; no asumir que esta tabla sea la fuente del visor ni que esté vacía. Validar retención/migración antes de borrarla. | NexoInt (referencia heredada); limpieza de Dory |

Discord mantiene el hilo, mensajes y adjuntos originales. No se incluyen en este inventario como tablas de Supabase. El código actual consulta el historial por la API de conversación, en vez de descargarlo periódicamente y duplicarlo en la base.

## 3. Empleados y calendario

| Tabla | Uso documentado | Consumidor(es) |
|---|---|---|
| `dory.dory_job` | Catálogo de departamentos/puestos usado por la ficha de empleado y relaciones organizativas; también participa en consultas de supervisión. | Compartida |
| `dory.dory_charge` | Catálogo de cargos relacionado con `dory_job` y `dory_employee`. | NexoInt; consultas puntuales de Dory |
| `dory.dory_calendar_event` | Actividades, guardias de soporte, días festivos y eventos de cumpleaños representados en el calendario. Dory puede consultarlo al aplicar el calendario laboral de seguimiento. | Compartida |

## 4. Reportes, impresión y tableros

| Tabla | Uso documentado | Consumidor(es) |
|---|---|---|
| `dory.dory_report` | Definición/configuración de reportes y asociación con formato de impresión. | NexoInt |
| `dory.dory_report_parameter` | Parámetros, columnas/filtros y configuración asociada a un reporte. | NexoInt |
| `dory.dory_report_input_type` | Catálogo de tipos de entrada de parámetros de reporte. | NexoInt |
| `dory.dory_report_operator` | Catálogo de operadores para filtros de reportes. | NexoInt |
| `dory.dory_print_format` | Formatos de impresión y configuración de columnas/resumen. | NexoInt |
| `dory.dory_print_format_item` | Ítems/columnas de cada formato de impresión. | NexoInt |
| `dory.dory_changelog` | Bitácora de cambios consultable en modo de solo lectura por la entidad correspondiente. | NexoInt |

## 5. Repositorios, releases y Jarvis

| Tabla | Uso documentado | Consumidor(es) |
|---|---|---|
| `dory.repositories` | Repositorios configurados para releases, dependencias y aportes; incluye sus metadatos de operación. | Compartida |
| `dory.repository_categories` | Clasificación de repositorios usada por los flujos de documentación y encadenamiento. | NexoInt; Jarvis |
| `dory.repository_dependencies` | Relaciones de dependencia entre repositorios y patrones/criterios para resolver herencia de cambios. | Compartida |
| `dory.repository_release_documentation_profiles` | Perfil y plantilla de redacción de releases por repositorio. | Compartida |
| `dory.dory_jarvis_release_run` | Ejecuciones de documentación/publicación de releases, estado y datos de resultado. | Compartida |
| `dory.dory_jarvis_release_dependency_run` | Dependencias detectadas/procesadas para una ejecución de release. | Jarvis; lectura desde NexoInt |
| `dory.jarvis_idempotency_request` | Claves y resultado de solicitudes idempotentes de workflows de releases, para controlar reintentos duplicados. | Jarvis |
| `dory.dory_bot_settings` | Configuración del bot gestionada por clave/valor; algunos valores pueden ser secretos y deben tratarse como tales. | Compartida |

## 6. Entidades heredadas registradas en NexoInt

Las siguientes tablas todavía tienen clases de entidad o servicios asociados en el proyecto. La navegación de usuario puede ocultarlas y el alcance del PST IV excluye la gestión comercial de contratos, bolsas de horas y recibos. Por tanto, se documentan para inventario y compatibilidad, no como requerimiento vigente ni como compromiso de activación:

| Tabla | Uso que conserva el código | Estado de alcance |
|---|---|---|
| `dory.dory_service` | Catálogo de servicios vinculable a contratos. | Heredado / fuera del alcance PST IV |
| `dory.dory_service_contract` | Contratos de servicio y períodos/bolsas asociados. | Heredado / fuera del alcance PST IV |
| `dory.dory_service_contract_line` | Líneas de servicios asociadas a contratos. | Heredado / fuera del alcance PST IV |
| `dory.dory_receipt` | Cabecera de recibos generados por el flujo legado. | Heredado / fuera del alcance PST IV |
| `dory.dory_receipt_line` | Detalle de los recibos. | Heredado / fuera del alcance PST IV |

## 7. Memoria técnica de Jarvis fuera del esquema `dory`

| Tabla | Esquema | Uso documentado | Consumidor |
|---|---|---|---|
| `jarvis_memory` | Esquema por defecto configurado en la conexión PostgreSQL del bot | Memoria breve por hilo/autor con rol, contenido y fecha, usada por las funciones de memoria del agente. No es el historial canónico de tickets; validar retención y limpieza con la configuración del despliegue. | Jarvis |

El código crea esta tabla al inicializar la conexión. El esquema efectivo depende del `search_path` de la conexión; por eso se registra separada de las tablas `dory` y debe confirmarse en cada ambiente.

## 8. Vistas, funciones, autenticación y almacenamiento (no son tablas de negocio)

- `v_support_daily_cashier`: vista consultada por un tablero; no debe contarse como tabla.
- RPC citadas por NexoInt incluyen `dashboard_top_consultants`, `get_enum_values`, `resolve_email_from_username` y `admin_reset_user_password`. El conjunto de funciones es mayor por las políticas RLS y debe consultarse en migraciones vigentes.
- `avatars`: bucket de Supabase Storage para imágenes. No es una tabla del esquema `dory`; Storage mantiene sus propios metadatos.
- `auth.users`: tabla gestionada por Supabase Auth, externa al modelo de negocio `dory`.
- Los mensajes, canales e hilos originales son objetos de Discord; no son tablas de esta base.
- `dory.dory_print_paper` aparece en una migración que la elimina; no se incluye como tabla vigente.

## 9. Verificación y mantenimiento del inventario

Para actualizar este documento:

1. Comparar el registro de entidades y las consultas estáticas de NexoInt/Dory/Jarvis.
2. Revisar las migraciones ordenadas y confirmar cuáles se aplicaron en cada ambiente.
3. Consultar el catálogo real de PostgreSQL/Supabase con permisos de solo lectura para confirmar existencia, esquema, vistas y funciones.
4. Marcar como heredado o retirar del inventario solo después de comprobar que no hay consultas, tareas programadas, dependencias ni datos que aún lo requieran.
5. No incluir valores secretos, registros personales, transcripciones, tokens, cadenas de conexión ni credenciales en el catálogo.

Este catálogo complementa el [modelo relacional y diagramas del esquema `dory`](./README.md) y las [referencias técnicas del PST IV](../proyectos/referencias-tecnicas/README.md).
