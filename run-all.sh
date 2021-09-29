bash run.sh playbooks/create.yml
sleep 10
bash run.sh playbooks/install/install-docker.yml
bash run.sh playbooks/install/install-certbot-pip.yml
bash run.sh playbooks/install/install-pektin.yml
bash run.sh playbooks/run/run-pektin.yml