# Task 1: Basic Network Scanning with Nmap

## Project Overview

- **Analyst:** Praise Olivia Mazana
- **Date:** 23 June 2026
- **Tool:** Nmap 7.94SVN
- **Objective:** Perform network reconnaissance by identifying active hosts, open ports, running services, and potential security risks on a local network.
- **Scope:** 192.168.1.0/24

---

## Command Used

```bash
nmap -sV 192.168.1.76/24 -oN nmap_scan_results.txt
```

---

## Files Included

| File | Description |
|------|-------------|
| nmap_scan_results.txt | Raw Nmap scan results |
| security_analysis.md | Detailed security assessment |
| screenshots/ | Screenshots of the scan |

---

## Executive Summary

The network scan discovered **four active devices** on the local network.

### Device Summary

| Device | Description | Risk |
|---------|-------------|------|
| 192.168.1.75 | Windows System | High |
| 192.168.1.76 | Linux Web Server | High |
| 192.168.1.102 | Media / Streaming Device | Medium |
| 192.168.1.130 | Secure Host | Low |

---

## Key Findings

### Critical Risks

- SMB (Port 445) exposed on Windows host
- MySQL (Port 3306) exposed on Linux server

### High Risks

- Microsoft RPC (Port 135)
- FTP (Port 21)

### Medium Risks

- HTTP (Port 80)
- HTTPS (Port 443)
- Chromecast services

### Unknown Services

- Port 2968
- Port 9000

---

## Skills Demonstrated

- Network Discovery
- Service Enumeration
- Version Detection
- Security Assessment
- Vulnerability Identification
- Risk Analysis
- Technical Documentation

---

## Screenshots

Screenshots are located inside the **screenshots** folder.

---

## Conclusion

This project demonstrates the use of Nmap for network discovery, service enumeration, and security assessment. The scan identified several exposed services that should be secured to reduce the network's attack surface.
