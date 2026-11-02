# 📋 Auditoría y Guía de Tareas — Fase III: Implantación, Pruebas y Auditoría Informática
> **Asignación:** Giovana Garrido  
> **Área:** Detección y Corrección de Errores, Casos de Prueba 2026, Estrategias de Implantación y Auditoría Informática  
> **Proyecto:** Proyecto Socio Tecnológico IV (PST IV) — PNFI / UPTEP "JJ Montilla"  
> **Última Revisión:** 02 de Noviembre de 2026  

---

## 📌 Diagnóstico del Estado Actual en Google Docs

Tras la auditoría técnica del documento nativo (`.docx`), se constata que **la Fase III (Párrafos 658 al 750) conserva íntegramente el texto histórico de Trayecto III (Diciembre de 2025)**:
- Hace referencia a pruebas ejecutadas el *"02 de diciembre de 2025"*.
- Menciona que el Administrador accede al *"Dashboard de Apache Superset"* para visualizar horas (Apache Superset ya no forma parte del ecosistema; ahora se utiliza la consola web `NexoInt`).
- Contiene una contradicción temporal señalada en la propia reflexión crítica vieja: *"despliegue real realizado en un solo día (03/12/2025)"*.
- Falta el **Informe de Resultados de Auditoría Informática**, exigido formalmente por el esquema PNFI 2018 para Trayecto IV.

---

## ⏳ Tareas Requeridas para Completar la Fase III (2026)

---

### 1. ⚠️ Actualizar la Planificación y Casos de Prueba (Párrafos 659 a 696)
- **Fechas:** Actualizar todas las fechas al año académico **2026**.
- **Reemplazar Casos de Prueba Viejos:**
  - **Caso 1 (Integración Bot Dory ↔ Discord ↔ Supabase):** Probar el comando `/abrir_hilo` y la sincronización automática del caso en la base de datos PostgreSQL en Supabase (esquema `dory`).
  - **Caso 2 (Cierre Operativo y Trazabilidad de Tiempos):** Probar el comando `/cerrar_hilo` en Discord con ingreso de tópico, tipología y tiempo consumido (horas y minutos), verificando la persistencia en `dory_thread` y `dory_changelog`.
  - **Caso 3 (Consola Web NexoInt - Eliminación de Superset):** Probar la visualización del panel mensual y métricas en la interfaz web `NexoInt` (sustituyendo toda mención a Superset).
  - **Caso 4 (Gestión de Releases con Jarvis):** Probar la preparación y revisión de notas de versión en GitHub con supervisión humana obligatoria.

---

### 2. ⚠️ Estrategias y Pruebas de Implantación (Párrafos 697 a 715)
- Documentar el despliegue del ecosistema:
  - Frontend SPA `NexoInt` servido bajo Nginx.
  - Servicio `discord_bot` (Node.js/TypeScript) como demonio en VPS / Docker.
  - Persistencia en Supabase Cloud con políticas RLS y variables de entorno protegidas.
- Eliminar cualquier referencia a instalaciones locales de Apache Superset o bases de datos locales desfasadas.

---

### 3. ⚠️ Incorporar el Informe de Auditoría Informática (Exigido en Trayecto IV)
Debe agregarse una sección técnica formal que documente:
1. **Auditoría de Control de Acceso y Autenticación:**
   - Verificación de tokens JWT emitidos por Supabase Auth.
   - Control de acceso dinámico basado en roles (RBAC) por ventana y acción en `NexoInt`.
2. **Análisis de Vulnerabilidades (SAST y DAST):**
   - Análisis estático de código (SAST) para prevención de inyecciones SQL (uso de consultas parametrizadas y PostgREST).
   - Manejo seguro de secretos (tokens de Discord y claves de API resguardadas en `.env` sin exponerse en cliente ni logs).
3. **Auditabilidad y Trazabilidad:**
   - Registro inmutable de eventos sensibles en la tabla `dory.dory_changelog` (quién abrió, modificó o cerró cada caso).

---

### 4. ⚠️ Actualizar la Reflexión Crítica de la Fase III (Párrafos 747 a 750)
- Reescribir el párrafo final:
  - Eliminar la mención a Apache Superset y a las fechas de 2025.
  - Destacar la madurez técnica alcanzada al evaluar las pruebas unitarias, de integración y de sistema entre Discord, NexoInt y Supabase.
  - Concluir con la validación de la auditoría informática como garantía de seguridad y soberanía tecnológica en Software Libre.
