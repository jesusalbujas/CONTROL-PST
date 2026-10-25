# API de Dory: conversaciones y mensajes

## Propósito

La API sirve de puente entre NexoInt y los hilos de Discord para consultar conversaciones y, cuando el permiso lo autoriza, publicar mensajes y adjuntos. Discord conserva el historial original; la base de datos del sistema almacena los metadatos del caso, no una copia canónica de toda la transcripción.

## Identificadores

- `discordThreadId`: identificador nativo del hilo en Discord; se usa para localizar la conversación remota.
- `dory_thread_id`: identificador interno del registro del caso en la aplicación.

No deben intercambiarse estos identificadores. La respuesta de consulta puede incluir ambos para que la interfaz relacione el caso con su hilo.

## Operaciones funcionales

| Operación | Uso | Control esperado |
|---|---|---|
| Consultar conversación | Recuperar mensajes paginados, autores, fechas, contenido y adjuntos | Sesión válida o token con alcance de lectura y permiso de consulta del caso |
| Exportar conversación | Descargar el historial devuelto por Discord | Alcance de exportación y autorización del usuario |
| Publicar mensaje | Enviar texto y, si se admite, archivos al hilo | Alcance de escritura; validar estado del caso y restricciones de Discord |
| Administrar token personal | Crear/listar credenciales de integración propias | El secreto se muestra solo al crearlo; la lista no debe revelar su valor |

Las rutas HTTP y el formato exacto de paginación pertenecen a la implementación y pueden cambiar. La documentación del proyecto debe mantenerlas sincronizadas con la versión desplegada; no se fija aquí una URL de producción ni se incluyen ejemplos con credenciales reales.

## Reglas de envío y errores

- Un caso cerrado no debe aceptar publicaciones. Debe devolverse un error funcional claro y no intentar reabrirlo silenciosamente.
- Un hilo archivado solo puede desarchivarse como parte de un envío permitido si el caso continúa abierto y la política lo autoriza. Un hilo bloqueado debe rechazarse.
- El texto y los archivos están sujetos a los límites vigentes de Discord y a los límites configurados por el servicio. El servidor debe validar tipo y tamaño antes de reenviar.
- Las respuestas deben distinguir, como mínimo, solicitud inválida, falta de autenticación, alcance/rol insuficiente, caso inexistente, caso cerrado o hilo bloqueado, adjunto demasiado grande y fallo de Discord.
- El cliente no debe almacenar tokens en logs, URLs, analítica ni mensajes de error. Un token personal debe enviarse por un canal autenticado y revocarse si se expone.

## Privacidad y trazabilidad

Las consultas de conversación son bajo demanda. Evitar guardar transcripciones y adjuntos en una segunda ubicación reduce duplicación y exposición de datos. La auditoría puede registrar actor, operación, caso, resultado y fecha, pero no el token, el contenido completo de mensajes ni secretos adjuntos.

Véase también [guía técnica de procesos](../pst-4-guia-tecnica-procesos.md), [arquitectura del PST IV](../pst-4-arquitectura.md) e [inventario conceptual de datos](../../database/README.md).
