#!/bin/bash

ansible-playbook ./ansible/deploy_production.yml --private-key=ssh_keys/production/id_rsa -K -u deployer -i ./ansible/stages/production/hosts -vvv --ask-vault-pass
