# 🔍 Bash Log Analyzer & Error Extractor (v1.0)

A secure, interactive Bash script designed for Linux System Administrators to authenticate users, validate log file paths, extract runtime errors, and generate automated reports.

---

## 🛠️ Features
* **Authentication Layer:** Restricts execution to authorized users (Username: `admin`).
* **Interactive Prompt:** Asks the user dynamically for the target log file path.
* **Input Validation:** Verifies the existence of the log file (`[[ ! -f ]]`) before attempting to read it, preventing crashes.
* **Automated Extraction:** Uses `grep` to extract error entries and counts total occurrences.
* **Fixed Output Directory:** Automatically saves reports to `/scripts/` with a dynamic date stamp for organized auditing.

---

## ⚠️ Prerequisites
Before running this script, ensure that the `/scripts` directory exists on your system and you have write permissions to it:
```bash
sudo mkdir -p /scripts
sudo chmod 777 /scripts
