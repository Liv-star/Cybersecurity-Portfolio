#!/bin/bash

# ==========================================
# UFW Configuration Script
# Cybersecurity Internship - Task 2
# Author: Praise Olivia Mazana
# Description:
# This script installs and configures UFW
# to allow SSH (Port 22) and deny HTTP (Port 80).
# ==========================================

echo "Updating package list..."
sudo apt update

echo "Installing UFW..."
sudo apt install ufw -y

echo "Setting default firewall policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Allowing SSH (Port 22)..."
sudo ufw allow ssh

echo "Denying HTTP (Port 80)..."
sudo ufw deny http

echo "Enabling the firewall..."
sudo ufw enable

echo "Firewall configuration complete."
echo "Displaying firewall status..."

sudo ufw status verbose
