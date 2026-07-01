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

### 1. Install Nmap
```bash
sudo apt install nmap
2. Perform Network Scan
nmap -sV 192.168.1.76/24 -oN nmap_scan_results.txt
3. Analysis Process
Identify active hosts
Detect open ports
Map services and versions
Assess exposure risks
📊 Scan Summary

The Nmap scan identified multiple active devices within the local network.

Host	IP Address	Open Ports	Services & Versions
EMG3525-T50B (Linux Router)	192.168.1.1	21, 22, 23, 53, 80 (filtered), 139, 161, 443, 445, 2601, 2602, 8443, 49152, 49153	Pure-FTPd, Dropbear SSH 2018.76, BusyBox Telnetd, dnsmasq 2.67, Samba smbd 3.X–4.X, SNMP, HTTPS, Quagga routing, UPnP SDK 1.6.18
Farai.home (Windows Host)	192.168.1.75	135, 139, 445, 2968	Microsoft RPC, NetBIOS-SSN, Microsoft-DS?, enpp?
Lenovo Ideapad (Personal Laptop)	192.168.1.76	21, 80, 443, 3306	ProFTPD, Apache httpd 2.4.58, PHP 8.0.30, MariaDB (unauthorized)
Streaming Device	192.168.1.102	8008, 8009, 8443, 9000	Chromecast, HTTPS services, SSL cslistener
⚠️ Risk Matrix
Device	Critical	High	Medium	Unknown
Windows Host	SMB 445	RPC exposure	NetBIOS	Port 2968
Linux Router	Telnet (23)	FTP (21)	SNMP, UPnP	None
Personal Laptop	MariaDB (3306)	FTP	Apache	None
Streaming Device	None	None	HTTP/SSL services	Unknown
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
