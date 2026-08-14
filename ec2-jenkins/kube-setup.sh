#!/bin/bash
set -euxo pipefail

echo "========== Kubernetes Tools Installation Started =========="

# Install required packages
dnf install -y \
  git \
  vim \
  wget \
  curl \
  unzip \
  tar

# Update packages
dnf update -y

# Install Java
dnf install -y java-21-openjdk fontconfig

# Add Jenkins repository
curl -L -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins GPG key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2026.key

# Install Jenkins
dnf install -y jenkins

# Enable and start Jenkins
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins

# Open port 8080 in firewalld (if enabled)
systemctl enable firewalld
systemctl start firewalld
firewall-cmd --permanent --add-port=8080/tcp
firewall-cmd --reload