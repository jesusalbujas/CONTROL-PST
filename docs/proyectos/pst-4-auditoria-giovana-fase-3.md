# 📋 Plan de Desbloqueo y Reasignación — Fase III: Implantación, Pruebas y Auditoría Informática
> **Responsable Principal:** Giovana Garrido  
> **Equipo Técnico de Apoyo:** Daniel Pérez (Pruebas Funcionales) y José Zúñiga (Implantación y DevOps)  
> **Área:** Detección y Corrección de Errores, Casos de Prueba 2026, Estrategias de Implantación y Auditoría Informática  
> **Proyecto:** Proyecto Socio Tecnológico IV (PST IV) — PNFI / UPTEP "JJ Montilla"  
> **Fecha de Reasignación de Urgencia:** 12 de Noviembre de 2026  

---

## 🚨 Plan de Choque para Desbloquear la Fase III

Dado que la sección conserva el texto histórico de 2025 (Apache Superset y pruebas viejas) y representa el cuello de botella crítico para la entrega, **se divide la Fase III entre 3 personas** para completarla en 24-48 horas:

```
┌────────────────────────────────────────────────────────────────────────┐
│               DISTRIBUCIÓN DEL EQUIPO DE APOYO EN FASE III             │
├───────────────────────────────┬──────────────────────────┬─────────────┤
│ SECCIÓN TÉCNICA               │ RESPONSABLE ASIGNADO     │ ENTREGABLE  │
├───────────────────────────────┼──────────────────────────┼─────────────┤
│ 1. Casos de Prueba del        │ • Daniel Pérez           │ Cuadros de  │
│    Software (CP-01 al CP-04)  │   (Apoyo Técnico)        │ Pruebas     │
│ 2. Estrategias y Pruebas de   │ • José Zúñiga            │ Despliegue  │
│    Implantación (DevOps/Cloud)│   (Apoyo Técnico)        │ y Entorno   │
│ 3. Informe de Resultados de   │ • Giovana Garrido        │ Matriz SAST/│
│    Auditoría Informática      │   (Responsable)          │ DAST / RBAC │
│ 4. Purgado de Superset y      │ • Giovana Garrido y      │ Cierre de   │
│    Reflexión Crítica III      │   Albany Reyes           │ Fase III    │
└───────────────────────────────┴──────────────────────────┴─────────────┘
```

---

## 👥 Tareas Detalladas por Integrante

### 👤 1. Daniel Pérez (Apoyo en Casos de Prueba del Software — P[659 a 696])
Al dominar los 13 Requerimientos Funcionales (`RF`) y los Casos de Uso (`CUS`) de la Fase II, Daniel se encarga de vaciar las 4 fichas de casos de prueba del sistema 2026 en el Google Docs:
1. **CP-01 (Apertura de Caso en Discord ↔ Supabase):** Ejecución de `/abrir_hilo`, creación automática del canal/hilo y persistencia en `dory_thread`.
2. **CP-02 (Cierre y Registro de Tiempos):** Comando `/cerrar_hilo` con captura de tópico, tipología y tiempo consumido, validando persistencia en `dory_thread` y `dory_changelog`.
3. **CP-03 (Consola Web NexoInt):** Consulta del tablero analítico de métricas y filtrado de tickets por cliente (sustituyendo a Superset).
4. **CP-04 (Releases con Jarvis AI):** Preparación automatizada de notas de versión y auditoría en GitHub.

---

### 👤 2. José Zúñiga (Apoyo en Estrategias de Implantación — P[697 a 715])
Al haber diseñado la arquitectura y los diagramas de componentes y despliegue, José documenta la implantación técnica:
1. **Entorno de Ejecución:** Servidor VPS con Linux, contenedor Docker con Nginx para el frontend `NexoInt`, demonio Node.js para `discord_bot` y Supabase Cloud para PostgreSQL.
2. **Procedimiento de Despliegue:** Configuración de variables de entorno (`.env`), ejecución de migraciones SQL del esquema `dory` y políticas RLS.
3. **Pruebas de Implantación:** Verificación de conectividad HTTPS/WSS con Discord Gateway y endpoints de Supabase.

---

### 👤 3. Giovana Garrido (Informe de Auditoría Informática y Reflexión — P[716 a 750])
Giovana se concentra en el componente académico y de seguridad más exigido en Trayecto IV:
1. **Informe de Resultados de Auditoría Informática:**
   - Auditoría de Autenticación y JWT (Supabase Auth).
   - Control de Acceso Basado en Roles (RBAC en `NexoInt`).
   - Análisis de Vulnerabilidades (SAST contra inyecciones SQL y DAST sobre endpoints).
   - Trazabilidad y auditoría inmutable en `dory_changelog`.
2. **Actualizar la Reflexión Crítica de Fase III:**
   - Eliminar fechas viejas de 2025 y menciones a Superset.
   - Concluir con la validación de la auditoría informática como estándar de calidad y seguridad en software libre.
