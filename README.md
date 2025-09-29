# mongodb-migration

🖥️ Environment Setup
Install MongoDB Database Tools
    ✅ Verify **mongodump** and **mongorestore** are available.

📂 Directory Structure
Backups will be stored under:
/var/backups/mongodb/
   ├── example-db_dump/
   │    └── example-db/   # dump folder

📦 Dump Script (Cluster1 → DB1)
Save as: dump_example_db.sh

# Command:
sudo chmod +x dump_example_db.sh
sudo ./dump_example_db.sh
