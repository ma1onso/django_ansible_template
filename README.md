# django-ansible-template
Simple and beautiful django ansible template for install project in local environments and servers

# How to use:
* Set `ansible/roles/templates/env.j2`.

## Local installation
* [Install ansible](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html#installing-the-control-machine)
* Set `ansible/local/group_vars/all` and `ansible/local/hosts` values.
* run sh scripts/install.sh

## Prepare remote server
* [Install ansible](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html#installing-the-control-machine)
* Set `ansible/stages/STAGE[test|staging|production]/group_vars/all` and `ansible/STAGE[test|staging|production]/hosts` values.
* run sh scripts/prepare_server.sh

## Deploy remote server
* [Install ansible](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html#installing-the-control-machine)
* Set `ansible/stages/STAGE[test|staging|production]/group_vars/all` and `ansible/STAGE[test|staging|production]/hosts` values.
* run `sh scripts/deploy_STAGE[test|staging|production].sh`

## TODOs:
- [ ] Automatically set env variables with ansible
- [ ] Only use one playbook for deploy remote servers
- [ ] Test prepare remote server step
- [ ] Test deploy remote server step
- [ ] Replace env.j2 with another ansible feature
