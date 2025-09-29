# 🖥️ Environment Setup
Install MongoDB Database Tools in Ubuntu Server
✅ Verify **mongodump** and **mongorestore** are available.

📂 Directory Structure
Backups will be stored under:
/var/backups/mongodb/
   ├── example-db_dump/
   │    └── example-db/   # dump folder

📦 Dump Script (Cluster1 → DB1)
Save as: dump_example_db.sh

# Command:
1. sudo chmod +x dump_example_db.sh
2. sudo ./dump_example_db.sh
