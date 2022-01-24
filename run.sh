#!/bin/bash
mkdir -p playbooks/files/priv/
ansible-playbook -i playbooks/hcloud.yml $1