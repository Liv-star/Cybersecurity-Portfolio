# Task 1: Basic Network Scanning with Nmap

## Project Overview

- **Analyst:** Praise Olivia Mazana
- **Tool:** Nmap 7.94SVN
- **Objective:** Discover active hosts, identify open ports, and assess potential security risks within a local network.
- **Scope:** Local network (192.168.1.0/24)

---

## Command Used

```bash
nmap -sV 192.168.1.76/24 -oN nmap_scan_results.txt
```

---

## Files Included

| File | Description |
|------|-------------|
| `nmap_scan_results.txt` | Raw Nmap scan output |
| `security_analysis.md` | Detailed security analysis and recommendations |
| `screenshots/` | Scan screenshots |

---

## Executive Summary

The scan identified **four active devices** on the network.

| Device | Description | Overall Risk |
|---------|-------------|--------------|
| Device 1 | Windows System | High |
| Device 2 | Linux Web Server | High |
| Device 3 | Media / Streaming Device | Medium |
| Device 4 | Secure Host | Low |

The assessment revealed several services that require attention, including SMB, FTP, and an externally accessible database service.

---

## Key Findings

### Critical Risks

- SMB (Port 445) exposed on Windows system
- MySQL (Port 3306) exposed on web server

### High Risks

- Microsoft RPC (Port 135)
- FTP using plaintext authentication

### Medium Risks

- HTTP service
- HTTPS management interface
- Chromecast-related services

### Unknown Services

- Port 2968
- Port 9000

---

## Recommendations

- Disable SMBv1 and secure SMB access.
- Restrict MySQL to localhost.
- Replace FTP with SFTP or FTPS.
- Keep all operating systems and services updated.
- Investigate unknown services.
- Enable continuous monitoring and logging.

---

## Skills Demonstrated

- Network Discovery
- Service Enumeration
- Port Scanning
- Security Assessment
- Risk Analysis
- Vulnerability Identification
- Technical Documentation

---

## Screenshots

Screenshots of the scan are available in the `screenshots` folder.

---

## Conclusion

This assessment demonstrates the use of Nmap for identifying exposed services, evaluating security risks, and recommending mitigation strategies to improve the security posture of a local network.
