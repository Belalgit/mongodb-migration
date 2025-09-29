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

🚀 Restore Script (Cluster2 → DB2)
Save as: restore_example_db.sh

# Command:
1. sudo chmod +x dump_example_db.sh
2. sudo ./dump_example_db.sh         **dump DB1 from Cluster1**
3. sudo chmod +x restore_example_db.sh
4. sudo ./restore_example_db.sh      # restore DB1 to DB2 of Cluster2


# ⚠️ Notes & Best Practices
Replace <Cluster1-User> / <Cluster1-Password> and <Cluster2-User> / <Cluster2-Password> with actual Atlas credentials.
**--drop** ensures collections are replaced. Remove it if you want to **merge data** instead of overwriting.
Use a **dedicated migration user** in Atlas with readWrite and backup roles.
Allow the Ubuntu Server IP in MongoDB Atlas Network Access.
For large datasets, run with screen or tmux to avoid disconnection.
Always test restore on a **staging cluster** before production migration.

