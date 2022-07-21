#!/bin/bash

# Join worker nodes to the Kubernetes cluster
# sudo cp /vagrant/kafka.service.worker /etc/systemd/system/kafka.service
sudo systemctl disable mysqld
sudo systemctl disable docker
sudo systemctl disable zookeeper
sudo systemctl disable named
sudo systemctl disable krb5kdc
sudo systemctl disable kadmin
sudo systemctl enable --now containerd
sudo systemctl enable --now kubelet
sudo yum install -y git