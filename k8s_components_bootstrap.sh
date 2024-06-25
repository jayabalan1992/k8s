sudo apt install kubectl
sudo gke-gcloud-auth-plugin --version
sudo   apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gke-gcloud-auth-plugin --version
gcloud container clusters get-credentials jay-democluster --region=us-central1



## for Centos/Rocky

yum install kubectl -y
gcloud components install gke-gcloud-auth-plugin
gcloud container clusters get-credentials jay-democluster --region=us-central1
