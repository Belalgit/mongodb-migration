#!/bin/bash
# Backup only the example-db from MongoDB Atlas to /var/backups/mongodb

# Connection string (don’t put database name at the end!)
MONGO_URI="mongodb+srv://<Cluster1-User>:<Cluster1-Password>@exampledb.xxxxx.mongodb.net"

# Backup directory
BACKUP_DIR="/var/backups/mongodb/example_db_dump"
mkdir -p "$BACKUP_DIR"

# Database name
DB_NAME="example-db"

echo "Dumping database: $DB_NAME ..."
mongodump \
  --uri="$MONGO_URI/$DB_NAME" \
  --gzip \
  --out="$BACKUP_DIR" \
  --authenticationDatabase admin

echo "Backup completed. Dump is in: $BACKUP_DIR"
