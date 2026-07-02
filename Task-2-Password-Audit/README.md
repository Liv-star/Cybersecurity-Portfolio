# Basic Firewall Configuration with UFW

## Objective
Set up a basic firewall using UFW (Uncomplicated Firewall) on a Linux system to allow secure remote access via SSH while blocking HTTP traffic.

## Tools
- UFW (Uncomplicated Firewall)
- Ubuntu Linux

## Steps
1. **Install UFW**
   ```bash
   sudo apt update
   sudo apt install ufw -y

    Set Default Policies

        Deny all incoming connections

        Allow all outgoing connections
    bash

    sudo ufw default deny incoming
    sudo ufw default allow outgoing

    Allow SSH (Port 22)
    bash

    sudo ufw allow ssh

    Deny HTTP (Port 80)
    bash

    sudo ufw deny http

    Enable Firewall
    bash

    sudo ufw enable

    Verify Status
    bash

    sudo ufw status verbose

Verification

The firewall status should show:

    SSH (22/tcp) allowed

    HTTP (80/tcp) denied

    Default policy: deny incoming, allow outgoing

Example output:
Code

Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), disabled (routed)

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW IN    Anywhere
80/tcp                     DENY IN     Anywhere
22/tcp (v6)                ALLOW IN    Anywhere (v6)
80/tcp (v6)                DENY IN     Anywhere (v6)
