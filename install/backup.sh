#!/bin/bash

#####################################################################

# Variables

# Nombre del contenedor PostgreSQL
CONTAINER_NAME="pst.3.postgresql.service"
# Nombre de Base de datos
DB_NAME="adempiere"
DB_USER="adempiere"
BACKUP_FILE="seed"
FOLDER="backup"
FOLDER_TO="/opt/Development/github/postgres-university/postgresql/"

#####################################################################

## Lógica

# Comando para hacer backup
BACKUP_COMMAND="mkdir /tmp/$FOLDER && pg_dump -U $DB_USER -Fc -d $DB_NAME > /tmp/$FOLDER/$BACKUP_FILE.backup --verbose"

# Ejecutar el comando dentro del contenedor
docker exec $CONTAINER_NAME bash -c "$BACKUP_COMMAND"

# Copiar base de datos al directorio local
docker cp $CONTAINER_NAME:/tmp/$FOLDER/$BACKUP_FILE.backup $FOLDER_TO

# Limpieza
CLEAN_COMMAND="rm -r /tmp/$FOLDER"
# Ejecutar el comando dentro del contenedor para borrar el respaldo
docker exec $CONTAINER_NAME bash -c "$CLEAN_COMMAND"