# bash create-keys.sh
docker build . -t pektin-ansible && docker run -it --rm --mount "type=bind,source=$PWD,dst=/ansible/" --mount "type=bind,source=/home/paul/.ssh/blackbox.pub,dst=/root/personal.pub" pektin-ansible bash run-all.sh