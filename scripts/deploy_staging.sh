#!/bin/bash

ansible-playbook ./ansible/staging/deploy.yml --private-key=ssh_keys/staging/id_rsa -K -u deployer -i ./ansible/staging/hosts -vvv
