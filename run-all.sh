#!/bin/sh
sh create-dirs.sh
sh run.sh playbooks/create.yml || exit 1
sleep 10
sh run.sh playbooks/install/install-docker.yml || exit 1
sh run.sh playbooks/install/install-pektin.yml || exit 1
sh run.sh playbooks/run/run-pektin.yml || exit 1
sh run.sh playbooks/run/after-start.yml || exit 1
sh run.sh playbooks/run/setup-arbeiter.yml || exit 1