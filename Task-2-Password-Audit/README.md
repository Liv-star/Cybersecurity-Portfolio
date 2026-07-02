# Basic Firewall Configuration with UFW

## Objective

Configure a basic firewall using UFW (Uncomplicated Firewall) on Ubuntu Linux.

---

## Tools Used

- Ubuntu Linux
- UFW (Uncomplicated Firewall)
- Terminal

---

## Steps Performed

### 1. Updated package repositories

```bash
sudo apt update
```

---

### 2. Installed UFW

```bash
sudo apt install ufw -y
```

---

### 3. Configured default firewall policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

Incoming traffic is denied by default while outgoing traffic is allowed.

---

### 4. Allowed SSH

```bash
sudo ufw allow ssh
```

This permits remote administration over SSH (Port 22).

---

### 5. Blocked HTTP

```bash
sudo ufw deny http
```

This blocks incoming HTTP traffic on Port 80.

---

### 6. Enabled the firewall

```bash
sudo ufw enable
```

---

### 7. Verified firewall status

```bash
sudo ufw status verbose
```

---

## Firewall Rules

| Port | Protocol | Action |
|-------|----------|--------|
|22|TCP|ALLOW|
|80|TCP|DENY|

---

## Firewall Status

```
Status: active

Default: deny (incoming), allow (outgoing)

22/tcp      ALLOW IN    Anywhere
80/tcp      DENY IN     Anywhere
22/tcp(v6)  ALLOW IN    Anywhere(v6)
80/tcp(v6)  DENY IN     Anywhere(v6)
```

---

## Files Included

```
README.md
ufw_configuration.sh
screenshots/
```

---

## Learning Outcomes

- Installed UFW on Ubuntu.
- Configured default firewall policies.
- Allowed SSH traffic.
- Blocked HTTP traffic.
- Verified firewall rules using UFW status.
- Learned the importance of host-based firewalls in protecting Linux systems.

---

## Conclusion

This project demonstrated how to configure a basic firewall using UFW. The firewall was successfully configured to deny all incoming traffic by default, allow outgoing traffic, permit SSH access, and block HTTP traffic. The configuration was verified using the `ufw status verbose` command.
