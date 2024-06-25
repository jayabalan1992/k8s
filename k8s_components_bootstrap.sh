#!/bin/bash

# Check the operating system flavor and run the appropriate command

if hostnamectl | grep -q "Ubuntu"; then
        apt install kubectl wget docker -y
        apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
elif hostnamectl | grep -qE "Rocky|CentOS"; then
	yum install kubectl wget docker -y
	yum install google-cloud-sdk-gke-gcloud-auth-plugin -y
else
    echo "Unknown operating system flavor"
    hostnamectl | grep Operating # print the hostnamectl output for debugging purposes
fi

## for Centos/Rocky
gcloud components install gke-gcloud-auth-plugin
gcloud container clusters get-credentials jay-democluster --region=us-central1


# helm package install
wget https://get.helm.sh/helm-v3.15.2-linux-amd64.tar.gz
tar -zxvf helm-v3.15.2-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
