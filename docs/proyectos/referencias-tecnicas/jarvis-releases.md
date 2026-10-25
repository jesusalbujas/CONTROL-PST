# Proceso de releases de Jarvis

## Objetivo

Preparar notas de liberación verificables a partir del historial de GitHub y, en proyectos agregadores, de las dependencias y migraciones que efectivamente correspondan al rango publicado. Jarvis genera una propuesta basada en evidencia; no reemplaza la revisión humana ni confirma por sí solo que un artefacto quedó publicado.

## Flujo de documentación

1. Seleccionar un repositorio configurado y el tag/release objetivo.
2. Determinar la referencia anterior válida. Si no existe un release previo, revisar el historial completo alcanzable hasta el tag objetivo; nunca comparar el tag consigo mismo ni concluir que no hubo cambios por ausencia de una versión base.
3. Analizar commits y diferencias del rango real. Separar cambios funcionales, correcciones, dependencias, mantenimiento y metadatos; solo presentar cambios respaldados por archivos, commits, issues o migraciones.
4. Para repositorios agregadores, identificar el cambio de dependencia y buscar XML de migración aplicables al mismo rango. Diferenciar el cambio del agregador de la funcionalidad heredada del componente.
5. Añadir enlaces relacionados con título legible y URL correcta. Evitar enlaces duplicados o Markdown mal formado.
6. Generar la nota y revisarla antes de publicar. El resultado de Actions debe reflejar los jobs reales y no basta para demostrar que el paquete quedó disponible.

## Tags que no deben contaminar la comparación

Cuando el objetivo sea consultar versiones estables, excluir candidatos y pre-releases (por ejemplo, tags con `candidate`, `RC` o identificadores equivalentes), además de variantes `OLD-UI`. La exclusión debe aplicarse tanto al listado como a la selección de versiones base/final, salvo que quien consulta solicite expresamente incluirlas.

## Criterios de calidad

- No escribir “sin cambios funcionales” mientras exista evidencia sin revisar en el rango.
- No rellenar notas con frases genéricas sobre subidas de versión o actualización de componentes si no aportan el efecto funcional.
- No atribuir trabajo a una persona sin autoría verificable.
- No inventar la versión de un módulo que contiene una dependencia. Si no hay evidencia directa, indicar el tag más próximo comprobado y que la relación exacta no está demostrada.
- No omitir cambios del Patch, XML aplicables ni enlaces de issues solo porque el release visible sea de otro módulo.
- Diferenciar versión/tag, publicación de release, ejecución del workflow y disponibilidad del paquete: son hechos relacionados, pero no equivalentes.

La generación automática debe conservar evidencia suficiente para reproducir la comparación y facilitar revisión; ante errores de API o un rango incompleto, informar la limitación en lugar de producir una conclusión definitiva.
