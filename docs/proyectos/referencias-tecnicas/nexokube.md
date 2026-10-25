# Consola NexoKube

## Alcance funcional

NexoKube es la consola integrada en NexoInt para consultar los clústeres configurados. Según la configuración disponible, puede presentar namespaces, Deployments, StatefulSets, Pods, ConfigMaps, metadatos de Secrets, Nodes, estado de salud y logs. La disponibilidad de métricas de CPU/memoria depende de que el clúster tenga Metrics API; la capacidad de disco no debe confundirse con uso real si el proveedor solo expone almacenamiento efímero.

La consola puede ofrecer operaciones de escala, reinicio, actualización de imagen, edición de manifiesto, eliminación y exportación de logs. Cada operación debe estar condicionada por el permiso explícito asignado al rol y confirmaciones acordes al impacto. Lectura no implica permiso de escritura.

## Límites de seguridad

- Las credenciales de Kubernetes permanecen en el servidor y nunca se envían al navegador ni se incorporan a la imagen pública del frontend.
- La autorización debe combinar sesión válida, rol activo, permiso de la ventana/acción y restricciones por clúster/namespace.
- Los valores de Secrets no deben devolverse a la interfaz ni escribirse en auditoría. Es distinto mostrar metadatos de un Secret.
- La edición de manifiestos requiere validación, comparación de versión del recurso y confirmación; una validación sintáctica no garantiza que el cambio sea seguro ni que el rollout no afecte disponibilidad.
- El cambio de vista no cancela una mutación ya aceptada por Kubernetes. La UI debe comunicar el resultado y no presentarlo como reversible.
- Los errores de autenticación, autorización, contexto seleccionado o API del clúster deben mostrarse como errores diferenciados; un HTTP 404 no debe esconder la causa de permisos o configuración.

## Diseño de casos de uso

Al documentar cada operación, especificar actor y permiso, clúster/namespace seleccionado, recurso objetivo, validación previa, confirmación, resultado, auditoría y manejo de error. Para escala, describir valor actual y objetivo; para reinicio/eliminación, explicar el alcance exacto; para edición, separar vista, validación en seco y aplicación. Los cambios a producción requieren validación en el entorno y autorización del responsable del clúster.

## Lo que no se debe documentar aquí

No incluir kubeconfigs, tokens, certificados, claves, valores de variables privadas, rutas físicas del servidor, endpoints internos ni nombres de nodos sensibles. Tampoco se debe afirmar que un clúster está conectado o que una acción fue validada solo por estar descrita en esta guía. La configuración concreta vive en el despliegue privado y la valida su administrador.
