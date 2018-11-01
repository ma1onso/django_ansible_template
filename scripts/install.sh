#!/usr/bin/env bash

ansible-playbook ansible/local_deploy.yml -i ansible/stages/local --ask-become-pass -vvv