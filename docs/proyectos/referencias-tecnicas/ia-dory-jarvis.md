# Uso de IA en Dory y Jarvis

## Separación de responsabilidades

- **Dory** usa IA para tareas conversacionales y de soporte, como clasificación, síntesis o preparación de mensajes contextuales. La IA debe apoyarse en el contexto del hilo y las reglas del caso; no sustituye permisos ni modifica por sí sola el significado de estados.
- **Jarvis** usa IA para asistir en el análisis de repositorios y redacción de releases. La evidencia debe venir de cambios reales, commits, issues y artefactos consultables; una respuesta generada no es evidencia por sí misma.
- Las reglas deterministas y las operaciones de negocio (validación de compañía/canal, permisos, sincronización idempotente, cierre y control de interacciones) permanecen fuera de la decisión libre del modelo.

## Seguimiento contextual

Un “nudge” es un mensaje de seguimiento que Dory prepara para el hilo cuando hace falta una respuesta o actualización. Debe interpretar qué quedó pendiente, quién tiene la próxima acción y lo dicho en la conversación; por ejemplo, solicitar el resultado de pruebas que el consultor dijo que realizaría. No es sinónimo de temporizador, asignación automática ni cierre. La detección de intención de cierre es un proceso separado.

Antes de enviar, la aplicación debe verificar estado abierto, destinatario pertinente, política de seguimiento, horario y prevención de duplicados. Si falta contexto o hay ambigüedad, debe optar por no inventar una respuesta y solicitar intervención humana.

## Configuración y secretos

Los proveedores y modelos son configuración del servidor. Los nombres de variables y opciones pueden variar por versión; los valores secretos deben vivir en el gestor de secretos o entorno privado del despliegue y nunca en esta documentación, en el cliente web, en logs ni en commits.

La configuración estándar del bot y el agente de Jarvis son independientes: habilitar un proveedor conversacional no implica que el agente disponga de herramientas de GitHub. El despliegue debe especificar proveedor, modelo, límites, fallback y comportamiento ante indisponibilidad. No asumir proveedor, modelo o fallback sin comprobar el entorno vigente.

## Evaluación y seguridad

Evaluar mensajes con conversaciones autorizadas y anonimizadas, incluyendo ambigüedad, desacuerdo, pruebas pendientes, cambios de responsable, solicitudes de cierre y ausencia de respuesta. Medir pertinencia contextual, menciones correctas, duplicación, respeto de horario y capacidad de abstenerse. Evitar usar nombres, adjuntos o contenido sensible como datos de prueba sin autorización.

La IA no debe revelar credenciales, tratar instrucciones del contenido del usuario como configuración del sistema, inventar hechos/versiones ni enviar publicaciones sin que el flujo de permisos lo autorice. Registrar resultado y metadatos mínimos para auditoría, sin volcar prompts sensibles o transcripciones completas.
