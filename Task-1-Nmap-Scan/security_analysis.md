# Security Analysis

## Scan Summary

 # 🔒 Security Analysis — Basic Network Scanning with Nmap

## 🎯 Objective
Perform a network scan to identify open ports and services using Nmap.

---

## 🧰 Tools Used
- Nmap (Network Mapper)

---

## 🪜 Methodology

## 1. Install Nmap
```bash
sudo apt install nmap

## 2. Perform Network Scan

```bash
nmap -sV 192.168.1.76/24 -oN nmap_scan_results.txt
## 3. Analysis Process
Identify active hosts
Detect open ports
Map services and versions
Assess exposure risks
📊 Scan Summary

The Nmap scan identified multiple active devices within the local network.

---

| **Host** | **IP Address** | **Open Ports** | **Services & Versions** |
| --- | --- | --- | --- |
| EMG3525-T50B (Linux Router) | 192.168.1.1 | 21, 22, 23, 53, 80 (filtered), 139, 161, 443, 445, 2601, 2602, 8443, 49152, 49153 | Pure-FTPd, Dropbear SSH 2018.76, BusyBox Telnetd, dnsmasq 2.67, Samba smbd 3.X–4.X, SNMP, HTTPS, Quagga routing, UPnP SDK 1.6.18 |
| Farai.home (Windows Host) | 192.168.1.75 | 135, 139, 445, 2968 | Microsoft RPC, NetBIOS-SSN, Microsoft-DS?, enpp? |
| olivia-Lenovo-ideapad-130-15IKB.home | 192.168.1.76 | 21, 80, 443, 3306 | ProFTPD, Apache httpd 2.4.58 (OpenSSL/1.1.1w, PHP/8.0.30, mod_perl/2.0.12, Perl/v5.34.1), MariaDB (unauthorized) |
| Streaming Device | 192.168.1.102 | 8008, 8009, 8443, 9000 | HTTP?, Ninja Sphere Chromecast driver (ssl/castv2), HTTPS-alt?, SSL cslistener |

---

⚠️ Risk Matrix
| Device | Critical | High | Medium | Unknown |
| --- | --- | --- | --- | --- |
| Windows Host | 1 (SMB 445) | 1 (RPC exposure) | 1 (NetBIOS) | 1 (Port 2968 unknown) |
| Linux Router | 1 (Telnet) | 1 (FTP) | 2 (SNMP, UPnP) | 0 |
| Personal Laptop | 1 (MariaDB open) | 1 (FTP) | 1 (Apache exposure) | 0 |
| Streaming Device | 0 | 0 | 3 (HTTP?, SSL services) | 1 (Unclear ports) |
| Secure Host | 0 | 0 | 0 | 0 |

---

🧩 Priority Actions
🔴 Immediate
Secure SMB (445) on Windows and Linux systems
Restrict MariaDB (3306) on laptop
Disable Telnet (23) and FTP (21) on router
Investigate port 2968
🟠 Short Term
Replace FTP with SFTP/SSH
Harden Apache (disable unused modules, enforce TLS)
Restrict SNMP and UPnP
Update all systems
🟢 Long Term
Continuous vulnerability scanning
Security monitoring system
Network segmentation
Regular patch management
🧠 Overall Assessment

Risk Level: HIGH

Router exposes legacy insecure services
Windows host exposes SMB + RPC
Laptop has exposed database service
Streaming device has unclear SSL services
Network needs segmentation urgently
