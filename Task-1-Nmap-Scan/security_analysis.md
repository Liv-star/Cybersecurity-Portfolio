# Security Analysis

## Scan Summary

The Nmap scan identified four active devices within the local network.

| **[Host](ca://s?q=Explain_host_in_nmap_scan)** | **[IP Address](ca://s?q=Explain_IP_address_in_nmap_scan)** | **[Open Ports](ca://s?q=Explain_open_ports_in_nmap_scan)** | **[Services & Versions](ca://s?q=Explain_services_in_nmap_scan)** |
| --- | --- | --- | --- |
| EMG3525-T50B (Linux) | 192.168.1.1 | 21, 22, 23, 53, 80 (filtered), 139, 161, 443, 445, 2601, 2602, 8443, 49152, 49153 | Pure-FTPd, Dropbear SSH 2018.76, BusyBox Telnetd, dnsmasq 2.67, Samba smbd 3.X–4.X, SNMP, HTTPS, Quagga routing, UPnP SDK 1.6.18 |
| Farai.home (Windows) | 192.168.1.75 | 135, 139, 445, 2968 | Microsoft RPC, NetBIOS-SSN, Microsoft-DS?, enpp? |
| olivia-Lenovo-ideapad-130-15IKB.home | 192.168.1.76 | 21, 80, 443, 3306 | ProFTPD, Apache httpd 2.4.58 (OpenSSL/1.1.1w, PHP/8.0.30, mod_perl/2.0.12, Perl/v5.34.1), MariaDB (unauthorized) |
| Device | 192.168.1.102 | 8008, 8009, 8443, 9000 | HTTP?, Ninja Sphere Chromecast driver (ssl/castv2), HTTPS-alt?, SSL cslistener |
| Device | 192.168.1.130 | None | All 1000 ports closed (conn-refused) |

# Risk Matrix

| Device | Critical | High | Medium | Unknown |
|---------|----------|------|---------|----------|
|Windows|1|1|1|1|
|Linux Server|1|1|2|0|
|Streaming Device|0|0|3|1|
|Secure Host|0|0|0|0|

---

# Priority Actions

## Immediate

- Secure SMB (445)
- Restrict MariaDB (3306)
- Investigate port 2968

## Short Term

- Replace FTP with SFTP
- Harden Apache
- Update operating systems

## Long Term

- Continuous vulnerability scanning
- Security monitoring
- Network segmentation
- Regular patch management

---

# Overall Assessment

Overall Risk Level: **HIGH**

Although one host is well secured, multiple critical services were identified on the remaining systems. Immediate remediation should focus on SMB, FTP, and exposed database services, followed by hardening web services and investigating unknown ports.
