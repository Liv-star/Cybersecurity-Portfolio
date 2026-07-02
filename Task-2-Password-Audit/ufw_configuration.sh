#!/bin/bash

# UFW Configuration Script for Security Internship Task 2
# This script sets up a firewall to allow SSH and deny HTTP.

echo "Updating package list..."
sudo apt update

echo "Installing UFW..."
sudo apt install ufw -y

echo "Setting default policies: Deny incoming, Allow outgoing..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Allowing SSH (Port 22)..."
sudo ufw allow ssh

echo "Denying HTTP (Port 80)..."
sudo ufw deny http

echo "Enabling firewall..."
sudo ufw enable

echo "Displaying firewall status..."
sudo ufw status verbose

