#!/bin/bash

# Initialize Kubernetes
echo "[TASK 1] Initialize Kubernetes Cluster"
sudo kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address 192.168.56.2 >> /home/vagrant/kubeinit.log 2>/dev/null

# Copy Kube admin config
echo "[TASK 2] Copy kube admin config to Vagrant user .kube directory"
mkdir /home/vagrant/.kube
cp /etc/kubernetes/admin.conf /home/vagrant/.kube/config
chown -R vagrant:vagrant /home/vagrant/.kube

# Deploy weave network
echo "[TASK 3] Deploy calico network"
# su - vagrant -c "kubectl create -f /home/vagrant/net.yml"
su - vagrant -c "kubectl create -f https://projectcalico.docs.tigera.io/manifests/tigera-operator.yaml"
su - vagrant -c "kubectl create -f https://projectcalico.docs.tigera.io/manifests/custom-resources.yaml"

# Deploy flannel network
# echo "[TASK 3] Deploy flannel network"
# su - vagrant -c "kubectl create -f /home/vagrant/kube-flannel.yml"

# Generate Cluster join command
echo "[TASK 4] Generate and save cluster join command to /joincluster.sh"
kubeadm token create --print-join-command > /vagrant/joincluster.sh

echo "[TASK 5] Install git which was left out"
sudo yum install -y git