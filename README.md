# KaliGuard 🔐

KaliGuard is a modular Linux-based real-time security monitoring dashboard built using Bash scripting.

It continuously monitors system activity, detects suspicious behavior, and logs security events.

---

## 🚀 Features

- 📊 Process Monitoring (CPU usage)
- 🌐 Network Monitoring (active connections)
- 👤 Login Monitoring (active users)
- 🧟 Zombie Process Detection
- 💾 Disk Usage Monitoring
- 🚪 Port Scanning (suspicious ports)
- 🚨 Intrusion Detection (failed logins & multiple sessions)

---

## 🛠️ Tech Stack

- Bash Scripting
- Linux Core Utilities (`ps`, `netstat`, `ss`, `df`, `who`)
- System Logs (`/var/log/auth.log`)

---

## ▶️ How to Run

```bash
chmod +x kaliguard.sh
./kaliguard.sh


## 📂 Project Structure

```
KaliGuard/
│── kaliguard.sh
│── modules/
│   ├── process_monitor.sh
│   ├── network_monitor.sh
│   ├── login_monitor.sh
│   ├── zombie_monitor.sh
│   ├── disk_monitor.sh
│   ├── port_scan.sh
│   └── intrusion_monitor.sh
│── logs/
```
