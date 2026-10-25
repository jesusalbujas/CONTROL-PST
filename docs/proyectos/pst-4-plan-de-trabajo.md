# 🚀 Plan de Trabajo y Cronograma de Urgencia — PST IV
### Actualización y Corrección Integral del Informe de Proyecto de Grado
**Meta:** Transformar el documento actual (heredado de PST III) en el informe real de **PST IV**, corrigiendo inconsistencias, redactando los componentes faltantes y completando las 5 Fases exigidas por el **Esquema Oficial PNFI 2018**.  
**Fecha Límite Improrrogable:** **Viernes 30 de Octubre de 2026** (5 días de ejecución).  

---

## 👥 Asignación Nominal de Redacción (6 Integrantes)

Cada integrante redactará su sección directamente en el Google Doc, apoyándose en los insumos ya preparados en este repositorio:

---

### 👤 1. Jesús Hernández (Coordinación General, Fase I y Metodología)
* **Objetivo:** Dejar la **Fase I** 100% pulida y adaptar la metodología en **Fase II**.
* **Tareas Específicas a Redactar:**
  1. **Actualizar el Organigrama y Reseña de ERP Consultores:** Asegurar que refleje el año 2026 y la estructura operativa real.
  2. **Reemplazar el Modelo de Negocio:** Eliminar menciones viejas a Superset/Excel y redactar el nuevo flujo (Discord $\leftrightarrow$ NexoInt $\leftrightarrow$ Base de Datos $\leftrightarrow$ Clientes).
  3. **Incorporar Diagrama CUN y Mapa de Procesos:** Transcribir los diagramas ya generados en [pst-4-arquitectura.md](./pst-4-arquitectura.md#23-mapa-y-flujograma-de-procesos-de-negocio).
  4. **Metodología de Calidad RECLAMO (Fase II):** Redactar la sección obligatoria de RECLAMO que actualmente no existe en el documento.
  5. **Reflexiones Críticas:** Redactar la Reflexión Crítica de Fase I y Fase II.
* **Plazo de Entrega:** **Martes 27 de Octubre - 06:00 PM**

---

### 👤 2. José Zúñiga (Fase II y IV — Ingeniería Técnica, Arquitectura, Base de Datos y Red)
* **Objetivo:** Como responsable técnico del informe, plasmar la arquitectura del sistema, diagramas de ingeniería y topología de red (tomando todo el material ya resuelto en el repositorio).
* **Tareas Específicas a Redactar:**
  1. **Modelo E/R y Diccionario de Datos (Fase II):** Transcribir el diagrama Entidad-Relación oficial del esquema `dory` y la tabla de entidades desde el [Modelo de Base de Datos](../database/README.md).
  2. **Diagramas de Ingeniería UML (Fase II):** Diagrama de Componentes, Diagrama de Despliegue y Diagrama de Secuencia global (disponibles en [pst-4-arquitectura.md](./pst-4-arquitectura.md)).
  3. **Diagrama Físico y Lógico de Red (Fase IV - Punto 2):** Completar la sección que está en blanco con la topología de servidores (Cloud VPS, Docker Bridge `172.20.0.0/16`, Nginx SSL Ingress, Discord Gateway).
  4. **Matriz Integral de Riesgos (Fase IV - Punto 3):** Tabular la matriz completa de riesgos (tecnológicos, operativos, legales, financieros) con sus planes de mitigación.
  5. **Reflexión Crítica de la Fase IV.**
* **Plazo de Entrega:** **Miércoles 28 de Octubre - 06:00 PM**

---

### 👤 3. Daniel Pérez (Fase II — Requerimientos y Casos de Uso del Software)
* **Objetivo:** Tabular los Requerimientos Funcionales y No Funcionales y redactar los Casos de Uso CUS.
* **Tareas Específicas a Redactar:**
  1. **Llenar las Fichas de Requerimientos Funcionales (RF):** Usar la plantilla oficial (Código, Nombre, Descripción, Entradas, Salidas, Prioridad):
     - `RF-01`: Autenticación federada (Google / Discord OAuth).
     - `RF-02`: Creación de tickets en Discord (`/abrir_hilo`).
     - `RF-03`: Cierre operativo e imputación de horas (`/cerrar_hilo`).
     - `RF-04`: Asignación de consultores (`/asignar_consultor`).
     - `RF-05`: Generación de Release Notes con IA (`jarvis`).
     - `RF-06`: Control de bolsas de horas y contratos en NexoInt.
  2. **Fichas de Requerimientos No Funcionales (RNF):** Plantillas de Seguridad (NIST/OWASP), Disponibilidad (24/7), Rendimiento (latencia < 250ms) y Portabilidad (Web/Docker).
  3. **Especificación de Casos de Uso (CUS):** Redactar las plantillas detalladas de casos de uso (Precondiciones, Flujo Principal, Flujos Alternos y Postcondiciones).
* **Plazo de Entrega:** **Miércoles 28 de Octubre - 06:00 PM**

---

### 👤 4. Giovana Garrido (Fase III — Pruebas de Software y Auditoría Informática)
* **Objetivo:** Actualizar la bitácora de pruebas eliminando las fechas de 2025 y redactar el Informe de Auditoría.
* **Tareas Específicas a Redactar:**
  1. **Actualizar Casos de Prueba:** Corregir las fechas de 2025 al presente (2026) y agregar casos de prueba reales para `nexoint` y `/cerrar_hilo`.
  2. **Pruebas de Carga e Integración:** Documentar pruebas simuladas con `k6`/`Locust` de concurrencia y tiempos de respuesta.
  3. **Redactar el Informe de Auditoría Informática (Exigido en Trayecto IV):**
     - Técnicas de auditoría aplicadas: Análisis estático (SAST) y dinámico (DAST).
     - Auditoría de seguridad: Revisión de tokens JWT, control de accesos RBAC y sanitización de inputs.
     - Plan de Continuidad y Respaldos: RPO < 2 horas, RTO < 30 minutos con `pg_dump` cifrado.
  4. **Reflexión Crítica de la Fase III.**
* **Plazo de Entrega:** **Jueves 29 de Octubre - 06:00 PM**

---

### 👤 5. Albany Reyes (Fase V — Manual de Usuario y Manual de Sistemas)
* **Objetivo:** Redactar los dos primeros manuales técnicos obligatorios.
* **Tareas Específicas a Redactar:**
  1. **Manual de Usuario:**
     - Guía paso a paso ilustrada para el Cliente: Cómo abrir un hilo en Discord, cómo interactuar con el soporte y cómo consultar sus horas en `la app`.
     - Guía para el Consultor: Cómo usar `/cerrar_hilo`, `/actualizar_hilo` y `/asignar_consultor`.
  2. **Manual de Sistemas:**
     - Arquitectura técnica del sistema.
     - Documentación de APIs y Endpoints (rutas de autenticación, tickets, webhooks de Jarvis).
     - Diccionario de tablas principales del esquema `dory`.
* **Plazo de Entrega:** **Jueves 29 de Octubre - 06:00 PM**

---

### 👤 6. Candy Gutiérrez (Fase V — Manuales Restantes, Políticas y Revisión Final)
* **Objetivo:** Redactar la instalación, normas, políticas de seguridad y realizar la corrección general del informe.
* **Tareas Específicas a Redactar:**
  1. **Manual de Instalación:**
     - Requisitos de hardware y software (Linux, Docker 24+, Docker Compose, Node.js).
     - Paso a paso de clonación de repositorio, variables `.env` y ejecución de `docker compose up -d`.
  2. **Manual de Normas y Procedimientos:**
     - Protocolo de atención de tickets, escalamiento L1/L2 y cierre contable de horas de soporte.
  3. **Políticas y Estándares de Seguridad Informática:**
     - *Seguridad Física:* Control de acceso a terminales y servidores.
     - *Seguridad Lógica:* Política de contraseñas seguras, autenticación OAuth/2FA, expiración de sesiones (NIST 800-63B) y gestión de roles RBAC.
     - *Política de Respaldo:* Frecuencia de backups y planes de recuperación ante fallos.
  4. **Revisión General de Estilo y Normas UPTEP / APA:**
     - Homogeneizar tipografía, márgenes, numeración de cuadros e imágenes.
     - Actualizar el Índice General, Índice de Cuadros e Índice de Gráficos.
* **Plazo de Entrega:** **Viernes 30 de Octubre - 12:00 PM (Mediodía)**

---

## 📅 Cronograma de Ejecución Diario (Día a Día)

```mermaid
gantt
    title Cronograma de Urgencia - Entrega de Informe PST IV
    dateFormat  YYYY-MM-DD
    section Fase I y II
    Fase I, CUN y RECLAMO (Jesús Hernández)     :a1, 2026-10-25, 2026-10-27
    RF, RNF y CUS (Daniel Pérez)                :a2, 2026-10-26, 2026-10-28
    section Ingeniería y Datos
    Modelo ER, UML, Red y Riesgos (José Zúñiga) :a3, 2026-10-26, 2026-10-28
    section Fase III
    Pruebas y Auditoría (Giovana Garrido)       :a4, 2026-10-27, 2026-10-29
    section Fase V (Manuales)
    Manual Usuario y Sistemas (Albany Reyes)    :a5, 2026-10-27, 2026-10-29
    Instalación, Políticas y Normas (Candy G.)  :a6, 2026-10-27, 2026-10-29
    section Consolidación
    Revisión de Estilo e Índices (Candy & Jesús H.):a7, 2026-10-29, 2026-10-30
    Validación Final del Tomo Completo          :milestone, 2026-10-30, 0d
```

| Día | Hito / Meta del Día |
| :--- | :--- |
| **Domingo 25 / Lunes 26** | Publicación del plan al grupo. Distribución de tareas y arranque inmediato de redacción. |
| **Martes 27** | **Hito 1:** Entrega de Fase I corregida y CUN (Jesús H.). Avance al 70% de Requerimientos y Manuales. |
| **Miércoles 28** | **Hito 2:** Cierre de Fase II (Requerimientos de Daniel P. y Modelos técnicos/Red de José Z.). |
| **Jueves 29** | **Hito 3:** Cierre de Fase III (Pruebas y Auditoría de Giovana G.) y entrega de los manuales (Albany y Candy). |
| **Viernes 30 (12:00 PM)** | **Hito 4:** Políticas de Seguridad listas, unificación del documento, revisión de índices y entrega del tomo completo listo para revisión docente. |
