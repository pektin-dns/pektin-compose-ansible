YOUR_SSH_PUB_KEY=/home/paul/.ssh/blackbox.pub
# bash create-keys.sh
docker build . -t pektin-compose-ansible && docker run -it --rm --mount "type=bind,source=$PWD,dst=/ansible/" --mount "type=bind,source=$YOUR_SSH_PUB_KEY,dst=/root/personal.pub" pektin-compose-ansible bash run-all.sh