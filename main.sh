#!/bin/bash

# Take IP as command line argument and convert it into array of IPs
declare -a IPS=$@
echo $IPS
# Remove kubespray directory if it exists
if [ -d kubespray ];then
	rm -rf kubespray;fi
# Clone kuberspary remote repository
echo "Cloning kubespray repository..."
git clone https://github.com/kubernetes-sigs/kubespray.git -q
echo "Installing packages from file..."
pip3 install -q -r kubespray/requirements.txt 
mkdir -p kubespray/inventory/mycluster
cp -rfp kubespray/inventory/sample kubespray/inventory/mycluster
# Create inventory file from node's IP
#CONFIG_FILE=kubespray/inventory/mycluster/hosts.yaml python3 kubespray/contrib/inventory_builder/inventory.py ${IPS[@]}
echo "Playbook running...this will tak around 15 mins..."
#ansible-playbook -i kubespray/inventory/mycluster/hosts.yaml  --become --become-user=root kubespray/cluster.yml

# ssh into master node 
ssh -qtt 10.128.0.30 bash -s test-ssh.sh




# Dashboard creation
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-rc7/aio/deploy/recommended.yaml

