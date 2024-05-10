#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Upgrade installed packages
echo "Upgrading installed packages..."
sudo apt upgrade -y

# Upgrade BIOS
echo "Upgrading BIOS..."
sudo rpi-update

# Enable Camera Module
echo "Enabling Camera Module..."
sudo raspi-config nonint do_camera 0

# Edit config file
echo "Editing config file..."
sudo sed -i '/^start_x=/ s/^/#/' /boot/config.txt
sudo sed -i '/^camera_auto_detect=/ s/^/#/' /boot/config.txt
sudo sed -i '/^gpu_mem=/ s/^/#/' /boot/config.txt
echo "camera_auto_detect=1" | sudo tee -a /boot/config.txt
echo "gpu_mem=256" | sudo tee -a /boot/config.txt

echo "Configuration complete. Rebooting..."
sudo reboot
