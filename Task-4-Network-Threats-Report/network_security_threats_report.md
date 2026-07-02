# Research Report on Common Network Security Threats

**Project:** Task 4 – Research Report on Common Network Security Threats  
**Analyst:** Praise Olivia Mazana  
**Date:** July 2026

---

# Introduction

Modern organizations depend heavily on computer networks for communication, data storage, financial transactions, and business operations. As networks continue to expand, cybercriminals develop increasingly sophisticated methods to exploit vulnerabilities. Understanding common network security threats is essential for protecting sensitive information, maintaining system availability, and ensuring business continuity.

This report examines three major categories of network security threats:

- Denial-of-Service (DoS) Attacks
- Man-in-the-Middle (MITM) Attacks
- Spoofing Attacks

For each threat, this report explains how the attack works, its impact on organizations, real-world examples, and recommended mitigation strategies.

---

# 1. Denial-of-Service (DoS) Attacks

## Overview

A Denial-of-Service (DoS) attack is a cyberattack that attempts to make a computer, server, or network unavailable to legitimate users by overwhelming it with excessive traffic or malicious requests.

When multiple compromised devices participate in the attack, it is known as a Distributed Denial-of-Service (DDoS) attack.

---

## How a DoS Attack Works

The attacker sends an enormous number of requests to a target server.

The server attempts to process every request until its resources become exhausted, including:

- CPU
- Memory
- Bandwidth
- Network connections

Eventually, legitimate users can no longer access the service.

Typical attack flow:

```
Attacker
      ↓
Massive Traffic
      ↓
Target Server
      ↓
Resources Exhausted
      ↓
Service Unavailable
```

---

## Types of DoS Attacks

### SYN Flood

Exploits the TCP three-way handshake by sending numerous connection requests without completing them.

### UDP Flood

Sends massive UDP packets to random ports, forcing the server to waste resources processing them.

### HTTP Flood

Targets web servers using legitimate-looking HTTP requests.

### ICMP Flood (Ping Flood)

Uses ICMP Echo Requests to overwhelm network bandwidth.

---

## Impact

A successful DoS attack can result in:

- Website downtime
- Financial losses
- Lost customer trust
- Reduced productivity
- Interrupted online services
- Damage to company reputation

---

## Real-World Example

### GitHub DDoS Attack (2018)

GitHub experienced one of the largest DDoS attacks ever recorded, peaking at approximately **1.35 Tbps**.

Attackers abused unsecured Memcached servers to amplify attack traffic.

GitHub successfully mitigated the attack using cloud-based DDoS protection services.

---

## Mitigation Strategies

Organizations should:

- Deploy firewalls
- Use Intrusion Prevention Systems (IPS)
- Implement rate limiting
- Configure Web Application Firewalls (WAF)
- Use Content Delivery Networks (CDNs)
- Deploy DDoS mitigation services
- Monitor network traffic continuously
- Implement redundancy and load balancing

---

# 2. Man-in-the-Middle (MITM) Attacks

## Overview

A Man-in-the-Middle (MITM) attack occurs when an attacker secretly intercepts communication between two parties.

The attacker can:

- Read data
- Modify messages
- Steal credentials
- Inject malicious content

Neither party realizes the communication has been compromised.

---

## How MITM Works

Example:

```
User
   ↓
Attacker
   ↓
Website

Website
   ↑
Attacker
   ↑
User
```

Instead of communicating directly with the website, all traffic passes through the attacker.

---

## Common MITM Techniques

### ARP Spoofing

The attacker associates their MAC address with another device's IP address.

### DNS Spoofing

Victims are redirected to fake websites.

### Evil Twin Wi-Fi

A fake wireless access point imitates a legitimate Wi-Fi network.

### HTTPS Downgrade

The attacker forces encrypted HTTPS traffic to use insecure HTTP.

---

## Impact

MITM attacks may result in:

- Password theft
- Identity theft
- Financial fraud
- Session hijacking
- Data manipulation
- Confidential information disclosure

---

## Real-World Example

### Public Wi-Fi Credential Theft

Cybercriminals often create fake public Wi-Fi hotspots in airports, hotels, and coffee shops.

Users unknowingly connect and attackers intercept:

- Banking credentials
- Email passwords
- Social media accounts
- Personal information

---

## Mitigation Strategies

Organizations and users should:

- Use HTTPS websites
- Enable VPNs
- Avoid unknown public Wi-Fi
- Enable Multi-Factor Authentication (MFA)
- Use encrypted communication protocols
- Verify SSL certificates
- Implement network segmentation

---

# 3. Spoofing Attacks

## Overview

Spoofing is the act of disguising malicious communications as trusted sources.

The attacker impersonates another device, user, or service to gain unauthorized access or deceive victims.

---

# Types of Spoofing

## IP Spoofing

The attacker forges the source IP address.

Used in:

- DDoS attacks
- Network impersonation

---

## Email Spoofing

Attackers forge email sender addresses.

Victims believe emails originate from trusted organizations.

Often used in phishing attacks.

---

## MAC Address Spoofing

The attacker changes the hardware address of a network interface to bypass network restrictions.

---

## DNS Spoofing

Attackers manipulate DNS records to redirect victims to malicious websites.

---

## ARP Spoofing

Fake ARP messages convince devices that the attacker's MAC address belongs to another device.

---

## Caller ID Spoofing

Frequently used in telephone scams.

Victims believe calls originate from banks or government agencies.

---

## Impact

Spoofing attacks can cause:

- Identity theft
- Credential theft
- Malware infections
- Financial fraud
- Unauthorized network access
- Data breaches

---

## Real-World Example

### Business Email Compromise (BEC)

Attackers impersonate company executives and send fraudulent emails requesting urgent bank transfers.

Many organizations worldwide have lost millions of dollars through email spoofing campaigns.

---

## Mitigation Strategies

Recommended defenses include:

- SPF
- DKIM
- DMARC
- Email filtering
- Network monitoring
- Secure DNS (DNSSEC)
- MFA
- Employee cybersecurity awareness training

---

# Comparison of Network Security Threats

| Threat | Primary Goal | Common Target | Main Impact | Mitigation |
|---------|-------------|--------------|------------|------------|
| DoS/DDoS | Disrupt services | Servers | Downtime | Firewalls, IPS, DDoS protection |
| MITM | Intercept communications | Users and Networks | Data theft | HTTPS, VPN, MFA |
| Spoofing | Impersonation | Users and Systems | Fraud, unauthorized access | SPF, DKIM, DMARC, DNSSEC |

---

# General Network Security Best Practices

Organizations should implement multiple layers of security, including:

- Regular software updates
- Strong password policies
- Multi-Factor Authentication
- Firewalls
- Intrusion Detection Systems (IDS)
- Intrusion Prevention Systems (IPS)
- Security Information and Event Management (SIEM)
- Network segmentation
- Encryption
- Regular vulnerability assessments
- Continuous monitoring
- Security awareness training
- Incident response planning
- Regular backups
- Zero Trust security principles

---

# Conclusion

Network security threats continue to evolve as attackers develop more sophisticated techniques. Denial-of-Service attacks focus on disrupting service availability, Man-in-the-Middle attacks compromise communication confidentiality, while spoofing attacks exploit trust by impersonating legitimate entities.

Organizations can significantly reduce their exposure to these threats by adopting layered security controls, keeping systems updated, using strong authentication methods, educating users, and continuously monitoring network activity. A proactive cybersecurity strategy combined with regular risk assessments is essential for maintaining the confidentiality, integrity, and availability of modern information systems.

---

# References

1. NIST Cybersecurity Framework
2. OWASP Foundation
3. Cisco Networking Academy
4. SANS Institute
5. Cloudflare Learning Center
6. Microsoft Security Documentation
7. IBM Security Learning Academy

---
