�---

# 🧠 Bash Log Analyzer — Automate Your Log Monitoring Like a Pro

A simple yet powerful **Bash script** that scans your system or application log files, detects errors, and generates a detailed **log analysis report** automatically.
Perfect for **system admins**, **QA engineers**, or **DevOps learners** who want to build real-world shell scripting skills.

---

## 🚀 Features

✅ Scans `.log` files automatically from a specified directory
✅ Detects key error patterns: `ERROR`, `FATAL`, and `CRITICAL`
✅ Generates a timestamped **report file** with summaries
✅ Highlights when too many errors appear (configurable)
✅ Uses core Bash tools: `grep`, `find`, `echo`, and loops
✅ Beginner-friendly structure — clear, commented, and expandable

---

## 💡 What You’ll Learn

🪄 **Bash essentials** — variables, arrays, loops, conditionals
⚙️ **Automating repetitive tasks** — no manual log searching
📊 **Pattern matching** using `grep` and error counting
🧩 **File operations** — reading, writing, and timestamping reports
🧠 **Practical system scripting** — tools you’ll actually use at work

---

## 👩🏻‍💻 By the End, You’ll Have

✨ A working **log analysis automation** script
⚡ The confidence to create your own Bash utilities
💼 Practical scripting experience valuable for DevOps, QA, or sysadmin roles

---

## 🧰 How to Use

1. **Clone the repo:**

   ```bash
   git clone https://github.com/yourusername/bash-log-analyzer.git
   cd bash-log-analyzer
   ```

2. **Update paths inside the script:**

   ```bash
   LOG_DIR="/path/to/your/logs"
   REPORT_FILE="/path/to/save/report.txt"
   ```

3. **Make the script executable:**

   ```bash
   chmod +x analyse-logs.sh
   ```

4. **Run it:**

   ```bash
   ./analyse-logs.sh
   ```

5. **View your report:**

   ```bash
   cat /path/to/save/report.txt
   ```

---

## 📄 Example Output

```
Analyzing log files
====================

List of log files updated in the last 24 hours:
/Users/example/logs/system.log
/Users/example/logs/app.log

================================
=== Analyzing file: system.log ===
================================

Searching for ERROR logs:
ERROR: Database connection lost
ERROR: Timeout reached

Number of ERROR logs found: 2
```

---

## 🧠 Bonus Challenges

* Add color-coded output with `tput` or ANSI escape codes
* Include timestamps in your report names
* Email or Slack the report using `sendmail` or a webhook
* Create a cron job to run this automatically every night

---
