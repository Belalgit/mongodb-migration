#!/bin/bash
# Restore only the example-db database into the target Atlas cluster

# Target Atlas cluster connection (Cluster2, DB2)
TARGET_URI="mongodb+srv://<Cluster2-User>:<Cluster2-Password>@exampledb.xxxxx.mongodb.net"

# Path to the extracted dump folder
DB_PATH="/var/backups/mongodb/example_db_dump/example-db"

# Database name
DB_NAME="example-db"

if [ ! -d "$DB_PATH" ]; then
  echo "Dump folder for $DB_NAME not found at: $DB_PATH"
  exit 1
fi

echo "🚀 Restoring database: $DB_NAME ..."
mongorestore \
  --uri="$TARGET_URI/$DB_NAME" \
  --gzip \
  --dir="$DB_PATH" \
  --drop   # Drops existing collections before restore

echo "Restore completed for database: $DB_NAME into $TARGET_URI"
