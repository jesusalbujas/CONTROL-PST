# 🚀 Plan de Trabajo y Cronograma — PST IV
### Actualización y Corrección Integral de Fases I, II y III
**Meta de la Semana:** Transformar el documento actual (heredado de PST III) en el informe real de **PST IV**, corrigiendo inconsistencias, eliminando menciones viejas a Excel/Superset y completando formalmente **hasta la Fase III inclusive** con base en el **Esquema Oficial PNFI 2018**.  
**Fecha Límite:** **Viernes 30 de Octubre de 2026**.  

---

## 👥 Asignación de Tareas por Fases y Habilidades

Para avanzar de forma organizada y sin cuellos de botella, las tareas se dividen entre los **6 integrantes** según su perfil: las partes analíticas/descriptivas van para el equipo de Fase I, y las partes técnicas para quienes dominan modelado e ingeniería.

---

### 🏛️ EQUIPO FASE I — Planificación, Diagnóstico y Modelo de Negocio
*El documento de Google Docs actual tiene la Fase I desfasada (con referencias viejas a 2025 y flujos manuales de PST III). Se reforzó este equipo con 3 integrantes para dejar la Fase I impecable.*

#### 👤 1. Jesús Hernández (Coordinación de Fase I, Metodología y Modelo de Negocio)
* **Responsabilidad Principal:** Estructurar el nuevo modelo de negocio y la metodología.
* **Tareas a Ejecutar:**
  1. **Reescribir el Modelo de Negocio:** Eliminar cualquier mención a transcripción manual en Excel o Superset como núcleo. Describir el flujo real de PST IV: **clientes y consultores en Discord ↔ bot/API Dory-Jarvis; usuarios internos en NexoInt Web ↔ Supabase y API de Dory**. La aplicación móvil y el acceso de compañías se documentan aparte como líneas en desarrollo.
  2. **Diagramas del Negocio:** Revisar e incorporar el **Mapa de Procesos** y el **Diagrama de Casos de Uso del Negocio (CUN)**, alineándolos con los flujos y componentes que realmente existen.
     - 📖 *¿Dónde consultar la información?* Ver [Sección 2.3 y 2.4 de pst-4-arquitectura.md](./pst-4-arquitectura.md#23-mapa-y-flujograma-de-procesos-de-negocio).
  3. **Metodología de Calidad RECLAMO (Fase II):** Redactar la justificación y aplicación del estándar venezolano de calidad RECLAMO (exigido en Trayecto IV).
  4. **Reflexión Crítica de la Fase I.**
* **Plazo de Entrega:** **Miércoles 28 de Octubre - 06:00 PM**

#### 👤 2. Albany Reyes (Contexto Empresarial, Reseña y Fundamentación Legal)
* **Responsabilidad Principal:** Redacción descriptiva, reseña y bases legales (sin tecnicismos de código).
* **Tareas a Ejecutar:**
  1. **Actualización de Reseña y Organigrama:** Describir la empresa ERP Consultores y Asociados C.A., misión, visión y actualizar el organigrama estructural al año 2026.
     - 📖 *¿Dónde consultar la información?* Ver [Sección 2.1 de pst-4-arquitectura.md](./pst-4-arquitectura.md#21-contexto-y-diagnóstico-situacional-participativo).
  2. **Fundamentación Legal:** Redactar la vinculación formal con:
     - Constitución de la República Bolivariana de Venezuela (Art. 110).
     - Ley de Infogobierno y Decreto N° 3.390 (Software Libre).
     - Plan de la Patria (Objetivos históricos de soberanía tecnológica).
     - Ley Orgánica de Ciencia, Tecnología e Innovación (LOCTI).
  3. **Corrección de Forma y Redacción:** Leer y corregir ortografía y coherencia en toda la Fase I.
* **Plazo de Entrega:** **Miércoles 28 de Octubre - 06:00 PM**

#### 👤 3. Candy Gutiérrez (Diagnóstico Situacional, FODA y Árbol de Problemas)
* **Responsabilidad Principal:** Formulación analítica del problema y viabilidad.
* **Tareas a Ejecutar:**
  1. **Matriz FODA:** Actualizar las Fortalezas, Oportunidades, Debilidades y Amenazas de ERP Consultores y Asociados C.A. enfocadas en la nueva arquitectura.
     - 📖 *¿Dónde consultar la información?* Ver [Sección 2.5 de pst-4-arquitectura.md](./pst-4-arquitectura.md#25-matriz-foda-y-árbol-del-problema).
  2. **Tabla de Jerarquización de Problemas y Árbol del Problema:** Sustentar causas y efectos con el diagnóstico vigente; no presentar como hechos la falta de API unificada, retrasos de SLA o fricción de facturación sin evidencia.
  3. **Estudio de Factibilidad:** Redactar la factibilidad técnica, económica, operativa y social del proyecto.
* **Plazo de Entrega:** **Miércoles 28 de Octubre - 06:00 PM**

---

### ⚙️ EQUIPO FASE II — Requerimientos y Diseño Técnico (Software)

#### 👤 4. Daniel Pérez (Especificación Técnica, Requerimientos y Casos de Uso)
* **Responsabilidad Principal:** Redactar la sección técnica de la Fase II con las fichas PNFI y los casos de uso sustentados en la arquitectura y la documentación técnica proporcionada para el proyecto.
* **Tareas a Ejecutar:**
  1. **Sección técnica del informe:** Documentar componentes, límites entre NexoInt web, Supabase, API de Dory/Discord y Jarvis; flujo de datos, permisos y dependencias, tomando como fuente las guías técnicas entregadas. No se le asigna revisar código ni acceder a repositorios privados; tampoco debe describir un backend/API Gateway propio como parte del sistema.
  2. **Documentación técnica de apoyo:** Usar primero la [Guía técnica de procesos PST IV](./pst-4-guia-tecnica-procesos.md), que describe los flujos de NexoInt, Dory/Jarvis, sincronización, reportes, permisos y estados de desarrollo. Complementar con [Arquitectura del PST IV](./pst-4-arquitectura.md) y el [índice de referencias técnicas del PST IV](./referencias-tecnicas/README.md), que organiza la API de conversaciones, releases, IA y NexoKube. Consultar también el [inventario conceptual de datos `dory`](../database/README.md), sin tomarlo como definición definitiva de columnas o políticas vigentes. Todo el material asignado está dentro de Control-PST y debe bastar para redactar esta sección; las dudas funcionales se consultan al equipo.
  3. **Requerimientos Funcionales (RF):** Completar las fichas oficiales del PNFI para:
     - `RF-01`: Autenticación y autorización por roles y permisos de ventana/acción en NexoInt.
     - `RF-02`: Apertura, clasificación y sincronización de tickets de clientes y solicitudes internas desde Discord, validando compañía y canal.
     - `RF-03`: Actualización y cierre de casos, asignación de consultor, estado de atención y registro del tiempo consumido.
     - `RF-04`: Seguimiento contextual de Dory y detección de intención de cierre, con confirmación humana cuando corresponda.
     - `RF-05`: Gestión de releases con Jarvis: evidencia de cambios entre versiones, enlaces relacionados y detección de XML aplicables.
     - `RF-06` (**en desarrollo; no listo para declararse implementado**): Completar y validar el calendario de actividades, guardias, días festivos y cumpleaños visibles según permisos.
     - `RF-07`: Indicadores de soporte y actividad de consultores, incluyendo la distinción entre tickets e internas y aportes de GitHub en repositorios configurados.
     - `RF-08`: Reportes, filtros y exportación/impresión, conservando la selección y los enlaces a los casos.
     - `RF-09`: API de conversación de Dory para consultar mensajes y adjuntos de Discord sin duplicar transcripciones en la base de datos.
     - `RF-10`: Administración de tokens de integración con alcance y revocación.
     - `RF-11`: Consola NexoKube para consultar clústeres, namespaces, pods, deployments/statefulsets, configuración, salud y logs; especificar edición de manifiestos/versiones, escala y reinicio como acciones protegidas por permisos de rol, y no marcarlas entregadas sin validación.
     - `RF-12`: Acceso de compañías en desarrollo: grupos, compañías, usuarios externos, asignación de permisos y aislamiento de datos por organización.
     - `RF-13`: Aplicación móvil NexoInt, en desarrollo; especificar solo las funciones confirmadas por el equipo y no presentarla como entregada.
  4. **Requerimientos No Funcionales (RNF):** Especificar seguridad, privacidad por compañía, integridad de sincronización, manejo de errores, rendimiento, portabilidad y disponibilidad con criterios verificables. No atribuir certificaciones ni objetivos de SLA no acordados.
  5. **Casos de Uso del Software (CUS):** Elaborar actores, precondiciones, flujo principal, excepciones y resultados para apertura/sincronización de casos, actualización/cierre, consulta de conversación, seguimiento, releases, reportes y administración de accesos.
  6. **Trazabilidad de estado:** Identificar por cada requisito qué está implementado en el código actual, qué requiere validación de despliegue y qué continúa en desarrollo. Contratos/bolsas de horas, recibos/facturación y marcajes no forman parte de este alcance.
* **Plazo de Entrega:** **Jueves 29 de Octubre - 06:00 PM**

#### 👤 5. José Zúñiga (Ingeniería Técnica, Arquitectura y Modelo de Datos)
* **Responsabilidad Principal:** Diagramas UML, modelo relacional y diseño técnico.
* **Tareas a Ejecutar:**
  1. **Arquitectura del Software (3 Pilares):** Describir `nexoint`, `discord_bot`/`jarvis` y `NexoInt`.
     - 📖 *¿Dónde consultar la información?* Ver [Sección 3.1 y 3.2 de pst-4-arquitectura.md](./pst-4-arquitectura.md#31-visión-arquitectónica-general).
  2. **Modelo E/R y Diccionario de Datos:** Transcribir el modelo del esquema `dory` (PostgreSQL 16 en Supabase) y la tabla de entidades.
     - 📖 *¿Dónde consultar la información?* Ver [Diccionario de Datos en database/README.md](../database/README.md).
  3. **Diagramas de Ingeniería:** Diagrama de Componentes, Diagrama de Despliegue y Diagrama de Secuencia Global.
     - 📖 *¿Dónde consultar la información?* Ver [Sección 3.5 y 3.6 de pst-4-arquitectura.md](./pst-4-arquitectura.md#35-diagrama-de-interacción-y-flujo-de-datos-global).
  4. **Reflexión Crítica de la Fase II.**
* **Plazo de Entrega:** **Jueves 29 de Octubre - 06:00 PM**

---

### 🧪 EQUIPO FASE III — Implantación, Pruebas y Auditoría

#### 👤 6. Giovana Garrido (Pruebas del Sistema y Auditoría Informática)
* **Responsabilidad Principal:** Casos de prueba actualizados y reporte formal de auditoría.
* **Tareas a Ejecutar:**
  1. **Actualizar Casos de Prueba:** Corregir fechas y flujos obsoletos. Definir y ejecutar pruebas verificables para apertura/sincronización de casos, permisos, OAuth, llamadas a Dory, calendario y publicación de releases; registrar resultados reales, sin asumir que existe una suite automatizada.
  2. **Pruebas de Integración y Rendimiento:** Medir escenarios acordados y documentar resultados observados. No prometer latencias (< 250 ms), concurrencia o disponibilidad hasta tener mediciones y criterios aprobados.
  3. **Informe de Resultados de Auditoría Informática (Exigido en Trayecto IV):**
     - Análisis de vulnerabilidades SAST y DAST.
     - Auditoría de control de accesos (tokens JWT, RBAC dinámico por ventanas).
     - Revisar políticas de respaldo y recuperación configuradas por los servicios; consignar RPO/RTO únicamente si están definidos y comprobados.
     - 📖 *¿Dónde consultar la información?* Ver [Sección 4 de pst-4-arquitectura.md](./pst-4-arquitectura.md#4-fase-iii-estrategias-de-implantación-pruebas-y-auditoría-informática).
  4. **Reflexión Crítica de la Fase III.**
* **Plazo de Entrega:** **Viernes 30 de Octubre - 12:00 PM (Mediodía)**

---

## 📅 Cronograma de Entrega (Semana al Viernes 30 de Octubre)

```mermaid
gantt
    title Cronograma PST IV - Entrega de Fases I, II y III
    dateFormat  YYYY-MM-DD
    section Fase I (Equipo Reforzado)
    Reseña, Legal y Organigrama (Albany)         :a1, 2026-10-25, 2026-10-28
    FODA, Viabilidad y Problemas (Candy)         :a2, 2026-10-25, 2026-10-28
    Modelo Negocio, CUN y RECLAMO (Jesús H.)    :a3, 2026-10-25, 2026-10-28
    section Fase II (Diseño Técnico)
    Requerimientos RF/RNF y CUS (Daniel P.)      :a4, 2026-10-26, 2026-10-29
    Arquitectura, Modelo E/R y UML (José Z.)     :a5, 2026-10-26, 2026-10-29
    section Fase III (Pruebas y Auditoría)
    Bitácora de Pruebas y Auditoría (Giovana G.) :a6, 2026-10-27, 2026-10-30
    section Consolidación
    Revisión y Consolidación Fases I a III      :milestone, 2026-10-30, 0d
```

| Día | Meta del Día |
| :--- | :--- |
| **Lunes 26 / Martes 27** | Arranque de la reescritura de Fase I (Albany, Candy y Jesús H.) y vaciado de requerimientos (Daniel P.). |
| **Miércoles 28 (06:00 PM)** | **HITO 1: FASE I COMPLETA Y REVISADA.** Se entrega modelo de negocio nuevo, organigrama 2026, FODA, legal y CUN. |
| **Jueves 29 (06:00 PM)** | **HITO 2: FASE II COMPLETA.** Se entregan los requerimientos de Daniel P. y toda la ingeniería de José Z. (Modelo E/R y diagramas UML). |
| **Viernes 30 (12:00 PM)** | **HITO 3: FASE III COMPLETA.** Se entregan las pruebas 2026 y el Informe de Auditoría Informática de Giovana G. Documento consolidado hasta Fase III listo para revisión docente. |

---

> [!TIP]
> **Nota de Ayuda para el Equipo:**  
> Si algún compañero tiene dudas sobre qué escribir en su sección, todo el material técnico, diagramas e información de la empresa ya están listos en el repositorio en [docs/proyectos/pst-4-arquitectura.md](./pst-4-arquitectura.md) y en [docs/database/README.md](../database/README.md). Solo deben leer los enlaces indicados arriba y adaptarlos al documento de Google Docs.
