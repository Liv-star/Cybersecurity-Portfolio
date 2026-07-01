# Security Analysis

## Scan Summary

 🔒 Security Analysis — Basic Network Scanning with Nmap

## 🎯 Objective
Perform a network scan to identify open ports and services using Nmap.

---

## 🧰 Tools Used
- Nmap (Network Mapper)

---

## 🪜 Methodology

### 1. Install Nmap
Install Nmap using your package manager:

```bash
sudo apt install nmap
2. Perform Network Scan

Run a version detection scan on the local network:

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
Lenovo Ideapad (Personal Laptop)	192.168.1.76	21, 80, 443, 3306	ProFTPD, Apache httpd 2.4.58 (OpenSSL/1.1.1w, PHP/8.0.30, mod_perl/2.0.12, Perl/v5.34.1), MariaDB (unauthorized)
Streaming Device	192.168.1.102	8008, 8009, 8443, 9000	HTTP?, Chromecast castv2, HTTPS-alt?, SSL cslistener
⚠️ Risk Matrix
Device	Critical	High	Medium	Unknown
Windows Host	SMB 445	RPC exposure	NetBIOS	Port 2968 unknown
Linux Router	Telnet (23)	FTP (21)	SNMP, UPnP	None
Personal Laptop	MariaDB open	FTP	Apache exposure	None
Streaming Device	None	None	HTTP/SSL services	Unknown ports
🧩 Priority Actions
🔴 Immediate Actions
Secure SMB (445) on Windows and Linux systems
Restrict MariaDB (3306) on personal laptop
Disable or restrict Telnet (23) and FTP (21) on router
Investigate unknown port 2968 on Windows host
🟠 Short-Term Actions
Replace FTP with SFTP/SSH
Harden Apache (disable unnecessary modules, enforce TLS)
Restrict SNMP and UPnP to trusted networks
Update all systems and firmware
🟢 Long-Term Actions
Continuous vulnerability scanning
Security monitoring and alerting system
Network segmentation (separate IoT and core devices)
Regular patch management and configuration audits
🧠 Overall Assessment

Overall Risk Level: HIGH

The Linux router exposes multiple legacy services (Telnet, FTP, SNMP, UPnP), making it highly vulnerable.
The Windows host exposes SMB and RPC, which are commonly exploited attack vectors.
The personal laptop has an exposed MariaDB service without proper authentication.
The streaming device has unclear SSL-based services requiring further investigation.
The network requires segmentation and service hardening.
📌 Conclusion

This scan highlights significant misconfigurations and exposed services across multiple devices. Immediate remediation is required to reduce attack surface and improve network security posture.
