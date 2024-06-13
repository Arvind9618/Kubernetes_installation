#!/bin/bash

# Update and upgrade the system
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install -y curl apt-transport-https ca-certificates software-properties-common

# Add Kubernetes repository
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo add-apt-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

# Disable swap
sudo swapoff -a

# Install Kubernetes components
sudo apt update
sudo apt install -y kubelet kubeadm kubectl
