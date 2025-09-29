# mongodb-migration

🖥️ Environment Setup
Install MongoDB Database Tools
    ✅ Verify **mongodump** and **mongorestore** are available.

📂 Directory Structure
Backups will be stored under:
/var/backups/mongodb/
   ├── intercity_core_db_dump/
   │    └── intercity-core-db/   # dump folder

📦 Dump Script (Cluster1 → DB1)
Save as: dump_intercity_core_db.sh

# Command:
sudo chmod +x dump_intercity_core_db.sh
