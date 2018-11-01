#!/bin/bash

ansible-playbook ./ansible/deploy.yml --private-key=ssh_keys/test/id_rsa -K -u deployer -i ./ansible/test/hosts -vvv
