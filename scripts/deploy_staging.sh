#!/bin/bash

ansible-playbook ./ansible/deploy_staging.yml --private-key=ssh_keys/staging/id_rsa -K -u deployer -i ./ansible/stages/staging/hosts -vvv --ask-vault-pass
