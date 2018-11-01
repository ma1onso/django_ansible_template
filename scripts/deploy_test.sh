#!/bin/bash

# TODO: test not use --ask-vault-pass in bitbucket pipelines
ansible-playbook ./ansible/deploy_test.yml --private-key=ssh_keys/test/id_rsa -K -u DEPLOYER_USER -i ./ansible/stages/test/hosts -vvv --ask-vault-pass
