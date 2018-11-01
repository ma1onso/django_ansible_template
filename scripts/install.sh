#!/usr/bin/env bash

ansible-playbook ansible/install.yml -i ansible/stages/local --ask-become-pass -vvv