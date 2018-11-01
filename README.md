# django-ansible-template
Simple and beautiful django ansible template for install project in local environments and servers

# How to use:

**Note**: Encrypt all sensible data with `ansible-vault encrypt_string STRING` and put this in _all_ files.
[Example](https://stackoverflow.com/questions/30209062/ansible-how-to-encrypt-some-variables-in-an-inventory-file-in-a-separate-vault/44241343#44241343)


## Local installation
* [Install ansible](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html#installing-the-control-machine)
* Set `ansible/local/group_vars/all` and `ansible/local/hosts` values.
* run `sh scripts/install.sh`

## Prepare remote server
* [Install ansible](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html#installing-the-control-machine)
* Set your `ansible/stages/STAGE[test|staging|production]/group_vars/all` and `ansible/STAGE[test|staging|production]/hosts` values.
* run `sh scripts/prepare_server.sh`

## Deploy remote server
* [Install ansible](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html#installing-the-control-machine)
* Set your `ansible/stages/STAGE[test|staging|production]/group_vars/all` and `ansible/STAGE[test|staging|production]/hosts` values.
* run `sh scripts/deploy_STAGE[test|staging|production].sh`

## TODOs:
- [ ] Automatically set env variables (needed in settings/*) with ansible and
add steps for encrypt this data.
- [ ] Test prepare remote server step
- [ ] Test deploy remote server step
- [ ] Skip --ask-vault-pass for automatic deployment.
- [ ] Only use one playbook for deploy remote servers
- [ ] Replace env.j2 with another ansible feature
