#!/usr/bin/env bash

ansible-playbook ansible/prepare.yml -i ansible/stages/STAGE --ask-become-pass -vvv