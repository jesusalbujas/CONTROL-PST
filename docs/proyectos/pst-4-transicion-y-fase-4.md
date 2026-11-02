# 🎯 Estrategia de Transición: Depuración de lo Legado y Distribución de "Lo Nuevo"
### Proyecto Socio-Tecnológico IV (PST IV) — Normativa PNFI 2018

---

## 🗄️ PARTE 1: Cómo "Ocultar y Depurar lo Viejo" en el Documento

Para que el documento no sea un Frankenstein con parches de 2025 y el equipo pueda enfocarse limpiamente en lo que falta sin distracciones:

### 1. Respaldo "Snapshot" Inmutable
* **Acción:** En Google Docs, hacer un duplicado del documento actual con el nombre:  
  `PST_III_Version_Historica_Backup_2025`.
* **Propósito:** Garantizar que ningún dato del trayecto anterior se pierda y tener un punto de restauración seguro antes de podar el documento principal.

### 2. Uso de Encabezados Colapsables (Collapsible Headings en Google Docs)
* Google Docs permite plegar secciones enteras haciendo clic en la flecha al lado del título.
* **Estandarización visual en el documento:**
  - `# [✅ CERRADO Y APROBADO] FASE I: DIAGNÓSTICO Y MODELO DE NEGOCIO` ➔ *Se contrae.*
  - `# [✅ CERRADO Y APROBADO] FASE II: ESPECIFICACIÓN Y DISEÑO DEL SOFTWARE` ➔ *Se contrae.*
  - `# [🔄 EN CURSO] FASE III: DESARROLLO, PRUEBAS Y AUDITORÍA INFORMÁTICA` ➔ *Desplegado para trabajo activo.*
  - `# [🚀 NUEVO] FASE IV: OPERATIVIDAD, EVALUACIÓN DE IMPACTO Y MANUALES` ➔ *Espacio de trabajo nuevo.*

### 3. Purgado de Contenido "Muerto" y Traslado a Anexo
* **Qué se borra sin dudar:** Bloques repetidos de Apache Superset, tablas de pruebas de 2025 que quedaron flotando al final de la página, y referencias a "hojas de cálculo de Excel" o "facturación contable".
* **Qué se envía a Anexo:** Si hay algún cuadro de diagnóstico de PST III que el tutor exija mantener por rigor metodológico, se mueve a una sección final:  
  `ANEXO A: Antecedentes y Diagnóstico Preliminar (Trayecto III)`.

---

## 👥 PARTE 2: Distribución de "Lo Nuevo" (Fase IV y Cierre del Proyecto)

Una vez que queden resueltos los detalles de Fase I (Organigrama y Diagrama de Actividad) y Fase III (Casos de prueba y auditoría), el informe formal de Trayecto IV exige la **Fase IV (Operatividad, Manuales, Impacto y Cierre)**.

La carga de trabajo se distribuye entre los **6 integrantes** según sus roles y fortalezas técnicas:

```
┌────────────────────────────────────────────────────────────────────────┐
│                      DISTRIBUCIÓN DE "LO NUEVO"                        │
├──────────────────────────┬─────────────────────────────┬───────────────┤
│ EJE DE TRABAJO           │ INTEGRANTES                 │ ENTREGABLE    │
├──────────────────────────┼─────────────────────────────┼───────────────┤
│ 1. Ingeniería y Software │ • Daniel Pérez              │ Manuales del  │
│    (Manuales Técnicos)   │ • José Zúñiga               │ Sistema       │
├──────────────────────────┼─────────────────────────────┼───────────────┤
│ 2. Metodología y Calidad │ • Jesús Hernández           │ Operatividad  │
│    (Impacto y Procesos)  │ • Candy Gutiérrez           │ e Impacto     │
├──────────────────────────┼─────────────────────────────┼───────────────┤
│ 3. Cierre y Auditoría    │ • Giovana Garrido           │ Conclusiones  │
│    (Evaluación Académica)│ • Albany Reyes              │ y Auditoría   │
└──────────────────────────┴─────────────────────────────┴───────────────┘
```

---

### 📘 EJE 1: Manuales de Usuario y Administración Técnica (Software)

#### 👤 1. Daniel Pérez — Manual de Usuario de NexoInt Web
* **Objetivo:** Guiar al usuario final (Dirección y Consultores) en el uso de la interfaz web.
* **Secciones a redactar:**
  1. Acceso, inicio de sesión y perfiles de permisos (Dirección vs. Consultor).
  2. Tablero de control (Dashboard) y visualización de métricas de horas operativas.
  3. Módulo de gestión y seguimiento de tickets/hilos sincronizados.
  4. Generación y exportación de reportes de auditoría en PDF/CSV.
  5. Capturas de pantalla con formato formal PNFI (Imagen N° X / Fuente: Pérez Daniel, 2026).

#### 👤 2. José Zúñiga — Manual de Instalación, Configuración y Despliegue Técnico
* **Objetivo:** Documentar los requerimientos de entorno e instalación para que el sistema sea desplegable por el departamento de TI.
* **Secciones a redactar:**
  1. Requisitos de hardware, sistema operativo y dependencias (Node.js, Docker, Nginx).
  2. Guía de configuración de variables de entorno (`.env`) y credenciales (Supabase, Discord Token, GitHub Octokit).
  3. Ejecución de migraciones de la base de datos (Esquema `dory` en PostgreSQL/Supabase).
  4. Procedimiento de arranque del demonio del bot de Discord y servicio web.
  5. Plan de contingencia, respaldo (backups) y restauración de la base de datos.

---

### 📊 EJE 2: Manual Operativo y Evaluación del Impacto (Metodología y Procesos)

#### 👤 3. Jesús Hernández — Manual Operativo de Atención de Casos con Dory (Discord)
* **Objetivo:** Guía de procedimientos para que los consultores atiendan a los clientes a través del bot.
* **Secciones a redactar:**
  1. Flujograma paso a paso del ciclo de vida del ticket:
     - Apertura y tipificación por parte del cliente.
     - Notificación al equipo y asignación del consultor.
     - Uso de comandos slash (`/abrir_hilo`, `/cerrar_hilo`, `/tiempo`).
  2. Buenas prácticas en el registro del tiempo operativo (justificación del esfuerzo consumido).
  3. Protocolo ante fallos de conexión o tickets escalados a proyectos.

#### 👤 4. Candy Gutiérrez — Estudio de Impacto y Evaluación Post-Implantación
* **Objetivo:** Medir el cambio cuantitativo y cualitativo generado por el ecosistema en la empresa.
* **Secciones a redactar:**
  1. **Impacto Operativo:** Comparación del tiempo de respuesta y trazabilidad (Antes: descontrol en canales dispersos vs. Ahora: consolidación centralizada).
  2. **Impacto Social y Laboral:** Disminución del estrés operativo del personal consultor y transparencia en la asignación de cargas de trabajo.
  3. **Impacto Tecnológico:** Adopción de arquitectura moderna (Cloud, Bots, APIs seguras) en sustitución de procesos fragmentados.
  4. Cuadro comparativo: *Situación Inicial (Diagnóstico) vs. Situación con NexoInt + Dory*.

---

### 🎓 EJE 3: Conclusiones, Recomendaciones y Auditoría Final (Cierre Académico)

#### 👤 5. Giovana Garrido — Consolidación del Dictamen de Auditoría y Pruebas
* **Objetivo:** Certificar formalmente que el software cumple los estándares de seguridad y fiabilidad exigidos en el PNFI.
* **Secciones a redactar:**
  1. Cuadro resumen de resultados de pruebas (Unitarias, Integración, Carga y Seguridad).
  2. Dictamen final de la Auditoría Informática (Análisis SAST/DAST, control de inyecciones y matriz RBAC).
  3. Declaración de madurez del producto de software (Release candidate para producción).

#### 👤 6. Albany Reyes — Conclusiones y Recomendaciones del Proyecto
* **Objetivo:** Redactar el cierre formal del informe de grado conforme a la normativa PNFI.
* **Secciones a redactar:**
  1. **Conclusiones:** Un bloque concluyente por cada objetivo específico del proyecto (Diagnóstico, Requerimientos, Desarrollo/Pruebas e Implantación).
  2. **Recomendaciones para la Organización (ERPya Solutions C.A.):** Recomendaciones de mantenimiento preventivo, políticas de seguridad para tokens y capacitación periódica.
  3. **Recomendaciones para Futuras Investigaciones / Trayectos:** Sugerencias de escalabilidad (incorporación de inteligencia artificial conversacional avanzada, integración nativa con ERPs vía REST API).
