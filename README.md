# Ansible playbooks for deploying my desktop machine

This is a collection of playbooks and roles to quickly pre-deploy my work environment on a fresh installation of Xubuntu.

```
playbook.yml     top level playbook - run this
pushfiles.yml    migration playbook - copies files from ansible machine to target system 

ansible.cfg      configuration for Ansible
roles/           my custom roles directory
hosts            inventory file (not included)

```

## Preparation

Create a hosts file with similar contents, and edit according to setup
```
# Ansible inventory file for xubuntu machines

[all:vars]
deployuser="SOMEUSER"
seconduser="SOMEONEELSE"

[xubuntu-desktops]
192.168.1.12 ansible_user="ANSIBLEUSER"

```

## Run the whole thing

```
ansible-playbook -k -K playbook.yml
```
Caution with the following
```
ansible-playbook -k -K pushfiles.yml
```

It is wise to run a check beforehand:

```
ansible-playbook -C -k -K playbook.yml
```

## Notes on playbooks

This is a "quick and dirty" solution for my own needs.  
It does not mean it is not useful but certainly could be better executed.  
As me and my household iterates through desktops it gets more mature.

## Edit tasks in batch

```
find -name 'main.yml' -type f | grep task | xargs -r vim
```
This will explode on your vim.

