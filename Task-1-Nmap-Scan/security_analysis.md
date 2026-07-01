# Security Analysis

## Scan Summary

The Nmap scan identified four active devices within the local network.

---

# Device 1 – Windows System (192.168.1.75)

## Open Ports

| Port | Service | Risk |
|------|---------|------|
|135|MSRPC|High|
|139|NetBIOS|Medium|
|445|SMB|Critical|
|2968|ENPP|Unknown|

### Analysis

### Port 135 (MSRPC)

Risk: High

RPC has historically been exploited by malware including Blaster and Sasser worms. Attackers commonly abuse this service for lateral movement.

Recommendation

- Keep Windows updated
- Restrict firewall access
- Block external exposure

---

### Port 139 (NetBIOS)

Risk: Medium

Used for file and printer sharing.

Recommendation

- Disable if unnecessary
- Restrict access
- Use strong authentication

---

### Port 445 (SMB)

Risk: Critical

SMB has been targeted by ransomware including WannaCry and EternalBlue.

Recommendation

- Disable SMBv1
- Enable SMBv3
- Restrict access
- Apply Windows updates
- Never expose SMB to the Internet

---

### Port 2968

Risk: Unknown

Unknown service requiring further investigation.

Recommendation

- Identify application
- Monitor traffic
- Close if unnecessary

---

# Device 2 – Linux Web Server (192.168.1.76)

## Open Ports

| Port | Service | Risk |
|------|---------|------|
|21|FTP|High|
|80|Apache HTTP|Medium|
|443|Apache HTTPS|Medium|
|3306|MariaDB|Critical|

---

### FTP (21)

Risk: High

FTP transmits credentials in plaintext.

Recommendation

- Replace with SFTP
- Disable anonymous access
- Restrict user permissions

---

### Apache (80/443)

Risk: Medium

Apache version 2.4.58 is running.

Recommendation

- Redirect HTTP to HTTPS
- Keep Apache updated
- Disable unnecessary modules
- Enable Web Application Firewall

---

### MariaDB (3306)

Risk: Critical

Database service is accessible across the network.

Recommendation

- Bind database to localhost
- Enable TLS
- Use strong passwords
- Limit access

---

# Device 3 – Streaming Device (192.168.1.102)

## Open Ports

| Port | Service | Risk |
|------|---------|------|
|8008|HTTP|Medium|
|8009|Chromecast|Low|
|8443|HTTPS-alt|Medium|
|9000|Unknown|Unknown|

Recommendation

- Update firmware
- Change default credentials
- Restrict management interfaces
- Investigate unknown services

---

# Device 4 – Secure Host (192.168.1.130)

No open ports detected.

Assessment

Low Risk

The system presents a minimal attack surface and follows good security practices.

---

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
