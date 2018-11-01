#!/bin/bash

ansible-playbook ./ansible/production/deploy.yml --private-key=ssh_keys/production/id_rsa -K -u deployer -i ./ansible/production/hosts -vvv
