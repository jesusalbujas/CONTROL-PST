#!/bin/bash
set -e

echo "Starting database restore process..."

if [ -f /backups/superset.backup ]; then
    echo "Restoring superset database from /backups/superset.backup..."
    # We use || true because pg_restore might return non-zero exit code for warnings
    pg_restore -v -U "$POSTGRES_USER" -d superset --clean --if-exists /backups/superset.backup || true
    echo "Finished restoring superset database."
else
    echo "Backup file /backups/superset.backup not found."
fi

if [ -f /backups/superset_cypress.backup ]; then
    echo "Restoring superset_cypress database from /backups/superset_cypress.backup..."
    pg_restore -v -U "$POSTGRES_USER" -d superset_cypress --clean --if-exists /backups/superset_cypress.backup || true
    echo "Finished restoring superset_cypress database."
else
    echo "Backup file /backups/superset_cypress.backup not found."
fi
