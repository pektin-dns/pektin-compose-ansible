#!/bin/bash

bash create-dirs.sh
bash run.sh playbooks/create.yml || exit 1
sleep 10
bash run.sh playbooks/install/preinstall-pektin.yml || exit 1
bash run.sh playbooks/run/install-pektin.yml || exit 1
bash run.sh playbooks/run/after-install.yml || exit 1
bash run.sh playbooks/run/setup-arbeiter.yml || exit 1