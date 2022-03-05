SCRIPTS_IMAGE_NAME=instant-node
SCRIPTS_CONTAINER_NAME=instant-node
COMMAND="node index.mjs"
HOST_DIR=~/pektin-compose/
CONTAINER_DIR=/pektin-compose/

docker rm ${SCRIPTS_CONTAINER_NAME} -v --force &> /dev/null

docker build . -t ${SCRIPTS_IMAGE_NAME}



docker run --env UID=$(id -u) --env GID=$(id -g) --name ${SCRIPTS_CONTAINER_NAME} --user $(id -u):$(id -g) --network host --mount "type=bind,source=${HOST_DIR},dst=${CONTAINER_DIR}" -it ${SCRIPTS_IMAGE_NAME} ${COMMAND} || exit 1

docker rm ${SCRIPTS_CONTAINER_NAME} -v --force &> /dev/null

