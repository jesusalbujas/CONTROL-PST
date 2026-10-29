# 📋 Guía Metodológica de Fase I — Diagnóstico, Factibilidad y Modelo Operativo
> **Proyecto Socio Tecnológico IV (Trayecto IV) — PNFI**  
> **Comunidad / Empresa Beneficiada:** ERP Consultores y Asociados C.A.  

---

## 🎯 1. Criterio Académico Oficial (Normativa PNFI)

En el PNFI, **Trayecto IV no repite el diagnóstico en cero de años anteriores** como si la empresa no contara con ningún tipo de automatización o siguiera dependiendo de hojas de cálculo / cuadernos manuales.

1. **Evolución del Proyecto (Logros previos de PST III):**
   - En Trayecto III se creó la base de atención automática de soporte vía Discord (`discord_bot` / Dory) y el repositorio inicial de tickets en base de datos PostgreSQL.
   - Por tanto, la empresa **ya atiende mediante hilos y canales organizados en Discord**.
2. **El Problema Real de Partida en Trayecto IV (2026):**
   - Al expandirse la cartera de clientes corporativos de ERP Consultores y Asociados C.A., surgió una nueva problemática:
     - **Aislamiento de la información:** Los datos y la trazabilidad residen en Discord o consultas directas de base de datos, sin una consola web administrativa centralizada (`NexoInt`) que permita a los consultores y a la gerencia auditar, reclasificar y supervisar el ciclo de vida del soporte.
     - **Falta de automatización en entregas y documentación técnica:** La coordinación de notas de versión (*releases*) e incidencias de desarrollo en GitHub continuaba realizándose de forma manual y desarticulada del flujo de soporte.
     - **Registro operativo del tiempo:** La necesidad de registrar el tiempo dedicado por cada consultor a la resolución de incidentes técnicos para fines de control interno y auditoría operativa.

---

## ⚠️ 2. Delimitación Estricta del Alcance (¡Qué NO hace el sistema!)

> [!CAUTION]
> **PROHIBIDO INCLUIR COBROS, TARIFAS, CONTRATOS, BOLSAS DE HORAS O FACTURACIÓN.**
> - El alcance funcional del software aprobado para este proyecto es estrictamente **SOPORTE TÉCNICO, AUDITORÍA OPERATIVA Y TRAZABILIDAD DE INCIDENCIAS**.
> - La empresa puede prestar servicios comerciales, pero **el software desarrollado no incluye módulos de facturación, emisión de cobros, control de contratos ni cobro de horas**.
> - En la redacción del informe debe sustituirse *"facturación formal / cobro de horas / hojas de cálculo"* por:
>   - *Registro de tiempo consumido / horas dedicadas al servicio.*
>   - *Trazabilidad y auditoría operativa de casos.*
>   - *Consola centralizada de seguimiento administrativo (`NexoInt`).*

---

## 🤖 3. Diferenciación y Responsabilidades de Componentes

Para evitar mezclar componentes en la redacción:

| Componente | Rol en el Ecosistema | Responsabilidad Exacta |
| :--- | :--- | :--- |
| **`discord_bot` (Bot Dory)** | Soporte en Discord | Interacción con clientes y consultores, apertura de hilos (`/abrir_hilo`), cierre de incidencias (`/cerrar_hilo`), tipificación y registro de tiempo invertido. |
| **`NexoInt Web`** | Consola Web Administrativa | Interfaz web SPA (React / Vite) para consultores y gerencia. Permite visualizar hilos, auditoría, clasificaciones y métricas operativas. |
| **`Jarvis`** | Automatización en GitHub | Agente de asistencia técnica para control de releases, generación preliminar de notas de versión y documentación técnica en repositorios de código. |
| **`Supabase` (Esquema `dory`)** | Persistencia Centralizada | Base de datos PostgreSQL relacional como fuente única de verdad para canales, clientes, hilos, mensajes y eventos. |

---

## 📝 4. Contenido Requerido para la Fase I (Pendiente de Redactar en Google Docs)

### A. Estudio de Factibilidad (Sección actualmente en blanco en el Docs)
Debe redactarse textualmente en las 4 dimensiones exigidas por el esquema PNFI 2018:

1. **Factibilidad Técnica:**
   - El proyecto es técnicamente viable. Se fundamenta en tecnologías estables, modernas y de amplio soporte en la industria:
     - **Frontend:** React 19, TypeScript y Vite, permitiendo una interfaz web rápida y ligera sin sobrecargar los navegadores de los consultores.
     - **Backend / Persistencia:** Base de datos relacional PostgreSQL 16 alojada en Supabase Cloud, aprovechando esquemas estructurados (`dory`), mecanismos de autenticación y respaldo gestionado.
     - **Integraciones:** Bot de Discord en Node.js/TypeScript interactuando mediante Webhooks y Discord Gateway API, junto con flujos automatizados de GitHub Actions para Jarvis.
   - El equipo cuenta con las competencias técnicas requeridas para su desarrollo y puesta en marcha.

2. **Factibilidad Económica:**
   - El desarrollo del proyecto presenta una alta rentabilidad y un impacto financiero positivo:
     - **Cero Costo de Licenciamiento:** Se utiliza 100% Software Libre y librerías de código abierto bajo licencias MIT/Apache, eliminando pagos por licencias de software privativo.
     - **Aprovechamiento de Infraestructura Cloud Escalable:** Uso de capas optimizadas de servicios en la nube (Supabase, GitHub Actions y servidores de despliegue existentes de la empresa), sin requerir inversiones cuantiosas en servidores físicos locales dedicados.
     - **Eficiencia en Costos Operativos:** Reduce el tiempo invertido por los consultores senior en tareas administrativas y de búsqueda dispersa de información.

3. **Factibilidad Operativa:**
   - La solución se acopla de manera natural al flujo de trabajo existente de la empresa:
     - **Cero Curva de Aprendizaje para Clientes:** Los clientes continúan comunicando sus incidencias a través de sus canales y comunidades habituales en Discord, sin necesidad de adaptarse a plataformas desconocidas.
     - **Consola Intuitiva para Consultores:** La plataforma web `NexoInt` provee a los ingenieros y consultores de soporte un acceso centralizado, claro y estructurado a los tickets, historiales y métricas.
     - Los procedimientos de soporte se simplifican mediante comandos estandarizados de autocompletado y validación de categorías.

4. **Factibilidad Social:**
   - Contribuye directamente al fortalecimiento del talento humano nacional y a la soberanía tecnológica:
     - Promueve el uso de tecnologías abiertas conforme a los mandatos de la **Ley de Infogobierno** y el **Decreto N° 3.390**.
     - Mejora la transparencia y la calidad de atención técnica a clientes del sector productivo nacional atendidos por ERP Consultores y Asociados C.A.
     - Fortalece el vínculo académico-productivo entre la **UPTEP "Juan de Jesús Montilla" (PNFI)** y el sector de consultoría informática.

---

### B. Matriz FODA Actualizada (Alineada a Trayecto IV)

- **Fortalezas:**
  - Dominio avanzado del equipo en tecnologías web y de mensajería (React, TypeScript, Supabase/PostgreSQL, Discord API).
  - Arquitectura desacoplada en tres componentes especializados (`NexoInt`, `discord_bot`, `Jarvis`).
  - Cultura empresarial orientada al Software Libre y a soluciones ERP abiertas.
- **Oportunidades:**
  - Adopción inmediata por clientes al utilizar Discord como canal de mensajería ya establecido.
  - Vínculo institucional UPTEP "JJ Montilla" con el sector empresarial para validación en entornos reales.
  - Integración nativa con repositorios de código abierto para automatizar la documentación técnica.
- **Debilidades:**
  - Falta de un portal centralizado para auditar hilos de soporte en tiempo real (solventado por `NexoInt`).
  - Dispersión histórica de la documentación y notas de versión entre repositorios (solventado por `Jarvis`).
  - Dependencia de la conectividad y disponibilidad de APIs externas para la recepción en vivo.
- **Amenazas:**
  - Variabilidad en las políticas de límites de peticiones (*rate limits*) de APIs externas (Discord API, GitHub API).
  - Interrupciones en el servicio eléctrico o conectividad local que afecten temporalmente las estaciones de los consultores.

---

### C. Árbol del Problema y Tabla de Jerarquización

- **Problema Central:**  
  *Fragmentación en el seguimiento administrativo y carencia de una consola web centralizada para la auditoría, control operativo y gestión de incidencias técnicas en ERP Consultores y Asociados C.A.*
- **Causas Raíz:**
  1. La información de tickets y soporte residía exclusivamente dentro de los canales e hilos de Discord.
  2. Falta de una interfaz administrativa para reclasificar tópicos, auditar tiempos dedicados y supervisar la carga de consultores.
  3. Desarticulación entre los casos resueltos en soporte y la generación de notas de versión en los repositorios de GitHub.
- **Efectos y Consecuencias:**
  1. Tiempos prolongados de supervisión y reportería interna para la gerencia.
  2. Dificultad para auditar el cumplimiento de tiempos de atención y horas dedicadas por caso.
  3. Desfase entre las incidencias corregidas por soporte y la documentación técnica oficial de los releases de software.
