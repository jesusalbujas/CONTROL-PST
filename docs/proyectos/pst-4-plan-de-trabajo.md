# 🚀 Plan de Trabajo y Cronograma — PST IV
### Actualización y Corrección Integral de Fases I, II y III
**Meta de la Semana:** Transformar el documento actual (heredado de PST III) en el informe real de **PST IV**, corrigiendo inconsistencias, eliminando menciones viejas a Excel/Superset y completando formalmente **hasta la Fase III inclusive** con base en el **Esquema Oficial PNFI 2018**.  
**Fecha Límite:** **Viernes 30 de Octubre de 2026**.  

---

## 👥 Asignación de Tareas por Fases y Habilidades

Para avanzar de forma organizada y sin cuellos de botella, las tareas se dividen entre los **6 integrantes** según su perfil: las partes analíticas/descriptivas van para el equipo de Fase I, y las partes técnicas para quienes dominan modelado e ingeniería.

---

### 🏛️ EQUIPO FASE I — Planificación, Diagnóstico y Modelo de Negocio
La Fase I documenta el contexto y el modelo correspondientes al período estudiado. Se conservará el contenido histórico aprobado y no se incorporarán retrospectivamente a esa sección las funciones actuales de NexoInt, Dory o Jarvis. Las correcciones se limitarán a errores comprobables; cualquier evolución posterior se explicará en la sección del proyecto que corresponda.

#### 👤 1. Jesús Hernández (Coordinación de Fase I, Metodología y Procesos)

> **Estado:** **🔄 AVANCES VERIFICADOS (30/10/2026)**  
> **Guía Detallada Asignada:** 📖 Consultar [Auditoría y Guía de Tareas - Jesús Hernández](./pst-4-auditoria-jesus-h-fase-1.md) para el detalle de flujos y diagramas pendientes.  
> **Resultado de la Revisión:** Vaciadas y completadas con éxito las 4 plantillas de Casos de Uso del Negocio (Cuadros N° 11 al 14: `CU-01 Registrar caso`, `CU-02 Gestionar caso`, `CU-03 Generar reporte`, `CU-04 Recibir reportes`) e insertada la imagen del Diagrama CUN. La metodología de calidad RECLAMO está incorporada.

> [!NOTE]
> **Detalles pendientes por pulir (Jesús Hernández):**  
> 1. **Falta la Imagen del Diagrama de Actividad:** El título y párrafo descriptivo están en el documento (Párrafos 248-249), pero falta insertar el gráfico de actividad del negocio (Párrafos 250-251).  
> 2. **Rotulado de la Imagen del CUN:** Agregar número formal arriba y fuente abajo (`Imagen N° 7: Diagrama de Casos de Uso del Negocio` / `Fuente: Hernández H. Jesús A. (2026)`).  
> 3. **Actualizar Año en Cuadros 11 al 14:** Las fuentes de las plantillas CUN dicen *(2025)*; deben actualizarse a *(2026)*. En el Cuadro 11 corregir el título (*Plantilla de especificación de Registrar caso*).

<details>
<summary><b>📂 Ver Detalle de Tareas de Jesús Hernández (Click para desplegar)</b></summary>
<br>

* **Responsabilidad Principal:** Coordinar la estructuración del Modelo de Negocio (Sección III) y la metodología de calidad RECLAMO, trabajando en conjunto con Albany Reyes.
* **Guía de Apoyo Metodológico:** 📖 Consultar [Guía de Fase I (Diagnóstico, Factibilidad y FODA)](./pst-4-fase-1-guia-metodologica.md) y [Sección 2 de pst-4-arquitectura.md](./pst-4-arquitectura.md#2-fase-i-planificación-diagnóstico-y-modelo-de-negocio).
* **Detalle de Tareas Ejecutadas y Pendientes:**
  1. **Plantillas CUN (Cuadros N° 11 al 14):** ✅ Vaciadas en Tablas 6 a 9 con flujos principales, alternos y reglas del negocio (RN-01 a RN-04).
  2. **Diagrama CUN:** ✅ Imagen insertada en Párrafo 231. (Pendiente rotular número y fuente 2026).
  3. **Diagrama de Actividad:** ⏳ Pendiente insertar la imagen del flujo en Párrafo 250.
  4. **Metodología de Calidad RECLAMO:** ✅ Redactada en la sección correspondiente.
  5. **Reflexión Crítica de la Fase I:** Mantenerla enfocada en la necesidad de integración y auditoría de soporte de 2026 (sin mencionar cobros ni planillas manuales).

</details>

---

#### 👤 2. Albany Reyes (Contexto Empresarial, Organigrama y Apoyo en Modelo de Negocio)

> **Estado:** **🔄 EN CORRECCIÓN / REASIGNADA A APOYO DIRECTO DE JESÚS HERNÁNDEZ**  
> **Guía de Correcciones y Tareas Asignada:** 📖 Consultar [Auditoría y Guía de Tareas - Albany Reyes](./pst-4-auditoria-albany-fase-1.md) para el detalle de la jerarquía empresarial y las plantillas a completar en el Google Docs.  
> **Responsabilidad Principal:** Corregir el organigrama estructural 2026 de la empresa y **apoyar activamente a Jesús Hernández en la redacción y vaciado de las tablas y diagramas del Modelo de Negocio (Sección III)**.

> [!WARNING]
> **Detalle Crítico en el Organigrama Actual (Imagen N° 2 en Google Docs):**  
> El organigrama que subió tiene errores graves de jerarquía: agrupó a todo el personal en un solo bloque genérico de "analistas funcionales", incluyó a Jesús Albujas bajo esa área y subordinó a Waditza bajo Jesús.  
> 
> *Estructura Real 2026 que debe graficar:*
> - **Dirección General (Cabecera):** Carlos Parada y José Botero (Socios Directores).
> - **Área Funcional y Soporte:** Silviana (Senior) -> Nahomy y Daniel.
> - **Área de Ingeniería/Integraciones (Rama directa de Carlos Parada):** Jesús Albujas (independiente).
> - **Área de Proyectos (Rama directa de Dirección):** Waditza (Líder de Proyectos) -> José Uzcátegui (Analista de Proyectos).
> - 📖 Ver diagrama de referencia exacto en: [Guía de Organigrama Estructural 2026](./pst-4-organigrama-guia.md).

<details>
<summary><b>📂 Ver Tareas y Asignación de Apoyo para Albany Reyes (Click para desplegar)</b></summary>
<br>

* **Tareas a Ejecutar:**
  1. **Corregir Imagen N° 2 (Organigrama):** Reemplazar la imagen actual en el Google Docs por el organigrama con las 3 ramas independientes (Funcional, Técnica y Proyectos con José Uzcátegui).
  2. **Vaciado y Redacción Conjunta con Jesús Hernández (Sección III - Modelo de Negocio):**  
     Al estar el contexto histórico y la fundamentación legal ya redactados, Albany debe apoyar a Jesús Hernández en el vaciado de los elementos que están en blanco:
     - Completar las **Plantillas de Especificación de Casos de Uso del Negocio (Cuadros N° 11, 12, 13 y 14)** que actualmente están vacías.
     - Diseñar e insertar el **Diagrama de Casos de Uso del Negocio (CUN)** y los **Diagramas de Actividad** faltantes.
  3. **Revisión de Coherencia:** Verificar que en toda la Fase I se sustituyan los términos viejos de "facturación de horas" por "registro de tiempo operativo".
* **Plazo de Entrega:** **Miércoles 28 de Octubre - 10:00 PM**

</details>

---

#### 👤 3. Candy Gutiérrez (Diagnóstico Situacional, FODA y Árbol de Problemas)

> **Estado:** **🔄 EN AVANCE AVANZADO (FODA, REFLEXIÓN Y TABLA DE PROBLEMAS COMPLETADAS - 02/11/2026)**  
> **Resultado de la Revisión:**  
> - **✅ Matriz FODA (Cuadro N° 15 / Tabla 10): APROBADA (10/10).** Totalmente alineada a PST IV: cero menciones a Excel ni facturación.  
> - **✅ Tabla de Jerarquización de Problemas (Cuadro N° 16 / Tabla 11): APROBADA.** El Problema N° 2 fue corregido exitosamente a: *"Dificultad para auditar y consolidar los tiempos operativos invertidos por el personal técnico en la atención de casos"*.  
> - **✅ Reflexión Crítica de Fase I (Párrafo 283): APROBADA.** Párrafo nuevo impecable que sustituye por completo el texto viejo de PST III, resaltando a Dory (Discord), Jarvis (GitHub), NexoInt y Supabase.  
> - **✅ Estudio de Factibilidad (Líneas 99 a 119):** Desarrolladas las 4 dimensiones (Social, Económica, Técnica y Operativa).

> [!NOTE]
> **Detalles menores pendientes para Candy Gutiérrez:**  
> 1. **Texto del Árbol del Problema (Párrafo 273):** El texto descriptivo aún dice *"la problemática central de la empresa (la gestión manual)..."*. Cambiarlo por *"la fragmentación en el seguimiento administrativo y carencia de una consola web centralizada"*.  
> 2. **Factibilidad Económica (Párrafos 106-107):** Reemplazar las frases *"procesos administrativos y de facturación"* y *"horas que anteriormente quedaban sin registrar o facturar"* por *"procesos de auditoría operativa"* y *"horas que anteriormente quedaban sin trazabilidad formal"*.  
> 📖 Consultar [Auditoría y Correcciones Fase I - Candy Gutiérrez](./pst-4-auditoria-candy-fase-1.md).

<details>
<summary><b>📂 Ver Detalle de Tareas de Candy Gutiérrez (Click para desplegar)</b></summary>
<br>

* **Responsabilidad Principal:** Formulación analítica del problema, estudio de factibilidad y viabilidad operativa.
* **Detalle de Estado:**
  1. **Matriz FODA:** ✅ Completada y Aprobada formalmente.
  2. **Tabla de Jerarquización:** ✅ Problema N° 2 corregido y aprobado.
  3. **Reflexión Crítica de la Fase I:** ✅ Redactada y aprobada.
  4. **Estudio de Factibilidad:** ✅ Redactado (Pendiente ajuste menor de dos términos en económica).
  5. **Árbol del Problema:** ⏳ Pendiente ajuste del texto introductorio e Imagen N° 20.

</details>

---

### ⚙️ EQUIPO FASE II — Requerimientos y Diseño Técnico (Software)

#### 👤 4. Daniel Pérez (Especificación Técnica, Requerimientos y Casos de Uso)

> **Estado:** **✅ COMPLETADO Y APROBADO (100% - 02/11/2026)**  
> **Resultado de la Revisión:** Vaciado íntegro de los 13 Requerimientos Funcionales (`RF-01` a `RF-13`), 15 Requerimientos No Funcionales (`RNF-01` a `RNF-15`) y fichas de Casos de Uso del Software (CUS) bajo la plantilla formal PNFI.  
> **Diagramas de Casos de Uso Separados y Rotulados:**  
> - `Imagen N° 10: Gestión de soporte y seguimiento de casos` (Fuente: Pérez Daniel, 2026).  
> - `Imagen N° 11: Integración con Discord y API de Dory` (Fuente: Pérez Daniel, 2026).  
> - `Imagen N° 12: Asistencia contextual de Dory` (Fuente: Pérez Daniel, 2026).  
> - `Imagen N° 13: Jarvis, Informes y NexoKube` (Fuente: Pérez Daniel, 2026).

<details>
<summary><b>📂 Ver Detalle de Tareas Ejecutadas por Daniel Pérez (Click para desplegar)</b></summary>
<br>

* **Responsabilidad Principal:** Redactar la sección técnica de la Fase II con las fichas PNFI y los casos de uso sustentados en la arquitectura y la documentación técnica proporcionada para el proyecto.
* **Detalle de Contenido Vaciado:**
  1. **Sección técnica del informe:** Documentación de componentes, límites entre NexoInt web, Supabase, API de Dory/Discord y Jarvis; flujo de datos, permisos y dependencias.
  2. **Requerimientos Funcionales (RF):** Completadas las 13 fichas oficiales del PNFI (`RF-01` a `RF-13`).
  3. **Requerimientos No Funcionales (RNF):** Fichas `RNF-01` a `RNF-15` con criterios de verificación medibles.
  4. **Casos de Uso del Software (CUS):** Especificaciones de flujos de eventos principales, excepciones y postcondiciones.
  5. **Diagramas CUS:** 4 imágenes correctamente tituladas y referenciadas.

</details>

---

#### 👤 5. José Zúñiga (Ingeniería Técnica, Arquitectura y Modelo de Datos)

> **Estado:** **✅ COMPLETADO Y APROBADO (100% - 02/11/2026)**  
> **Resultado de la Revisión:** Despliegue de ingeniería exhaustivo y de máxima calidad académica en la Fase II:  
> - **Visión Arquitectónica General:** Detallados los 3 pilares (`NexoInt Web`, `discord_bot / Dory / Jarvis`, `Supabase Cloud esquema dory`) y delimitación de módulos en desarrollo (`Imagen N° 14`).  
> - **Modelo de Clases y Objetos:** 4 paquetes lógicos documentados con la `Imagen N° 15: Diagrama de Clases y Dominio`.  
> - **Comportamiento Dinámico:** Flujo transaccional con la `Imagen N° 16: Diagrama de Secuencia Global`.  
> - **Modelo de Datos Relacional:** `Imagen N° 17: Modelo Entidad-Relación (Esquema dory)`.  
> - **Diccionario de Datos Exhaustivo:** 18 tablas detalladas (Cuadros N° 20 al 37: `dory_client`, `dory_channel`, `dory_thread`, `dory_message`, `dory_changelog`, etc.).  
> - **Mapa de Navegación y Carta Estructurada:** `Imagen N° 18` (Navegación Web) e `Imagen N° 19` (Carta Estructurada).  
> - **Interfaz de Usuario y Formularios:** Vistas web y comandos slash en Discord.  
> - **Diagrama de Componentes y Despliegue:** `Imagen N° 20: Diagrama de Componentes` e `Imagen N° 21: Diagrama de Despliegue`.  
> - **Reflexión Crítica de la Fase II:** Redactada con enfoque formal de Trayecto IV.

<details>
<summary><b>📂 Ver Detalle de Tareas de José Zúñiga (Click para desplegar)</b></summary>
<br>

* **Responsabilidad Principal:** Diagramas UML, modelo relacional (esquema `dory`), arquitectura técnica de software y diseño del sistema.
* **Detalle de Entregables Completados:**
  1. **Arquitectura del Software (3 Pilares):** NexoInt, discord_bot/jarvis y Supabase Cloud documentados íntegramente.
  2. **Modelo E/R y Diccionario de Datos:** 18 cuadros de diccionario de datos con columnas, tipos, restricciones y descripciones.
  3. **Diagramas de Ingeniería:** Diagramas de Clases, Secuencia, Componentes, Despliegue, Navegación y Carta Estructurada.
  4. **Reflexión Crítica de la Fase II:** Incorporada con éxito.

</details>

---

### 🧪 EQUIPO FASE III — Implantación, Pruebas y Auditoría

#### 👤 6. Giovana Garrido (Pruebas del Sistema y Auditoría Informática)

> **Estado:** **⏳ PENDIENTE DE REVISIÓN Y ENTREGA (Fase III)**  
> **Responsabilidad Principal:** Casos de prueba actualizados bajo norma ISO/IEC 25010 y reporte formal de auditoría informática (SAST/DAST y RBAC).

<details>
<summary><b>📂 Ver Detalle de Tareas de Giovana Garrido (Click para desplegar)</b></summary>
<br>

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

</details>

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
