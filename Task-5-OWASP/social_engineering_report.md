# Research Report on Social Engineering Attacks

**Project:** Task 5 – Research Report on Social Engineering Attacks  
**Analyst:** Praise Olivia Mazana  
**Date:** July 2026

---

# Introduction

Cybersecurity threats are not limited to technical vulnerabilities. Many successful cyberattacks exploit human psychology rather than weaknesses in software or hardware. These attacks, known as **social engineering attacks**, manipulate individuals into revealing confidential information, granting unauthorized access, or performing actions that compromise security.

Social engineering remains one of the most effective attack methods because it targets trust, curiosity, fear, urgency, and human error. According to numerous cybersecurity reports, phishing and other forms of social engineering continue to be among the leading causes of data breaches worldwide.

This report explores common types of social engineering attacks, explains how they work, examines real-world case studies, and provides recommendations for preventing these attacks.

---

# What is Social Engineering?

Social engineering is the psychological manipulation of people to persuade them to perform actions or disclose sensitive information.

Instead of attacking computer systems directly, attackers exploit human behavior by pretending to be trusted individuals, organizations, or authority figures.

Common targets include:

- Employees
- Customers
- Government agencies
- Financial institutions
- Healthcare organizations
- Educational institutions

---

# Common Types of Social Engineering Attacks

## 1. Phishing

### Overview

Phishing is the most common social engineering attack. Attackers send fraudulent emails, text messages, or websites that appear to come from legitimate organizations.

The objective is to steal:

- Usernames
- Passwords
- Banking information
- Credit card details
- Personal information

---

### How Phishing Works

1. The attacker creates a fake email or website.
2. The victim receives a message appearing to come from a trusted source.
3. The victim clicks a malicious link.
4. The victim enters sensitive information.
5. The attacker captures the credentials.

Example:

```
Victim
   ↓
Fake Email
   ↓
Fake Login Page
   ↓
Credentials Stolen
```

---

### Common Characteristics

- Urgent language
- Fake invoices
- Password reset requests
- Prize notifications
- Security alerts
- Fake banking messages

---

### Real-World Case Study

## Google and Facebook Business Email Scam (2013–2015)

A cybercriminal impersonated a legitimate supplier and sent fraudulent invoices to employees at Google and Facebook. The companies unknowingly transferred more than **$100 million** before discovering the fraud.

### Impact

- Significant financial losses
- Internal investigations
- Improved verification procedures
- Increased employee awareness training

---

### Prevention

- Employee awareness training
- Email filtering
- Multi-Factor Authentication (MFA)
- Verify sender email addresses
- Never click suspicious links
- Confirm payment requests independently

---

# 2. Spear Phishing

### Overview

Spear phishing is a targeted phishing attack directed at a specific individual or organization.

Unlike traditional phishing, these emails contain personalized information, making them much more convincing.

---

### Example

An employee receives an email appearing to come from their manager requesting confidential financial records.

Because the message contains accurate names and company information, the employee trusts the request.

---

### Prevention

- Verify unusual requests
- Use MFA
- Employee cybersecurity training
- Email authentication technologies
- Report suspicious emails immediately

---

# 3. Whaling

### Overview

Whaling targets high-ranking executives such as:

- CEOs
- Directors
- Financial officers
- Government officials

These attacks often attempt to steal money or sensitive corporate information.

---

### Prevention

- Executive cybersecurity awareness
- Financial approval procedures
- Multi-person authorization for payments
- Strong email verification

---

# 4. Pretexting

### Overview

Pretexting involves creating a believable story (pretext) to convince victims to reveal confidential information.

The attacker may pretend to be:

- IT support
- Human Resources
- Law enforcement
- Bank representatives
- Government officials

---

### How It Works

Example:

An attacker calls an employee claiming to be from the company's IT department and requests login credentials to "fix a system issue."

The employee voluntarily provides their username and password.

---

### Real-World Example

Numerous data breaches have occurred after attackers impersonated technical support staff and convinced employees to disclose passwords or install remote access software.

---

### Prevention

- Verify identity before sharing information
- Follow verification procedures
- Never share passwords
- Train employees regularly
- Require official authorization

---

# 5. Baiting

### Overview

Baiting exploits curiosity by offering something attractive.

Examples include:

- Free USB drives
- Free software
- Free movie downloads
- Fake software updates

The victim unknowingly installs malware.

---

### How It Works

```
Attacker
    ↓
Infected USB Drive
    ↓
Victim Connects Device
    ↓
Malware Installed
```

---

### Real-World Example

Researchers have demonstrated that simply leaving infected USB drives in parking lots often results in employees plugging them into workplace computers, allowing malware to spread across networks.

---

### Prevention

- Disable automatic USB execution
- Restrict removable media
- Security awareness training
- Endpoint protection software
- Device control policies

---

# 6. Tailgating (Piggybacking)

### Overview

Tailgating occurs when an unauthorized individual gains physical access by following an authorized employee into a secure area.

Example:

An attacker carrying boxes asks an employee to hold the door open.

---

### Prevention

- Employee awareness
- Security badges
- Visitor registration
- Physical security controls
- Access control systems

---

# 7. Quid Pro Quo

### Overview

The attacker promises a benefit in exchange for sensitive information.

Example:

A fake IT technician offers technical assistance in exchange for login credentials.

---

### Prevention

- Identity verification
- Employee training
- Never exchange passwords for assistance
- Report suspicious requests

---

# Case Studies

## Case Study 1: Twitter Bitcoin Scam (2020)

Attackers used social engineering techniques to compromise Twitter employees.

The attackers gained access to internal administrative tools and hijacked several high-profile accounts, including those of prominent business leaders and public figures. Fraudulent cryptocurrency messages were then posted, resulting in financial losses and significant reputational damage.

### Lessons Learned

- Limit privileged account access
- Strengthen employee verification procedures
- Use Multi-Factor Authentication
- Monitor privileged account activity

---

## Case Study 2: RSA Security Breach (2011)

RSA Security suffered a major breach after employees received phishing emails containing malicious attachments.

An employee opened the attachment, allowing attackers to compromise internal systems and steal sensitive authentication-related information.

### Lessons Learned

- Email filtering is critical.
- Employees require ongoing cybersecurity awareness training.
- Advanced threat detection helps identify malicious activity early.

---

## Case Study 3: Target Data Breach (2013)

Attackers gained access to Target's network by compromising credentials belonging to a third-party HVAC contractor through phishing techniques.

Once inside the network, attackers installed malware on point-of-sale systems and stole payment card information from millions of customers.

### Impact

- Over 40 million payment cards compromised
- Significant financial losses
- Legal actions
- Reputational damage

### Lessons Learned

- Secure third-party access
- Network segmentation
- Vendor security assessments
- Continuous monitoring

---

# Impact of Social Engineering Attacks

Organizations affected by social engineering may experience:

- Financial losses
- Data breaches
- Identity theft
- Reputation damage
- Regulatory penalties
- Business disruption
- Customer trust erosion
- Intellectual property theft

---

# Best Practices for Prevention

Organizations should implement a layered defense strategy that includes:

- Regular cybersecurity awareness training
- Phishing simulation exercises
- Strong password policies
- Multi-Factor Authentication (MFA)
- Email filtering solutions
- Secure web gateways
- Endpoint protection
- Incident response plans
- Least privilege access
- Verification procedures for financial transactions
- Physical security controls
- Continuous monitoring
- Security reporting culture

Employees should:

- Verify unexpected requests.
- Avoid clicking unknown links.
- Inspect email addresses carefully.
- Report suspicious communications immediately.
- Never share passwords.
- Confirm financial requests through separate communication channels.

---

# Conclusion

Social engineering attacks remain one of the greatest cybersecurity risks because they exploit human behavior rather than technical vulnerabilities. Phishing, spear phishing, pretexting, baiting, and related techniques continue to cause significant financial losses and data breaches across industries.

Reducing the risk of social engineering requires more than deploying technical security controls. Organizations must invest in employee education, enforce strong security policies, implement multi-factor authentication, and foster a culture of security awareness. By combining technology with continuous user training, organizations can significantly reduce the likelihood and impact of social engineering attacks.

---

# References

1. National Institute of Standards and Technology (NIST). *Cybersecurity Framework (CSF)*
2. Cybersecurity and Infrastructure Security Agency (CISA). *Avoiding Social Engineering and Phishing Attacks*
3. OWASP Foundation. *Phishing and Social Engineering Prevention*
4. IBM. *Cost of a Data Breach Report*
5. Verizon. *Data Breach Investigations Report (DBIR)*
6. Microsoft Security. *Protect Against Social Engineering*
7. SANS Institute. *Security Awareness Training Resources*

---
