# ansible playbooks for deploying my desktop machine

This is a collection of playbooks and roles to quickly pre-deploy my work environment on a fresh installation of Xubuntu.

```
playbook.yml     top level playbook including the others
userconfig.yml   my user config playbook
packages.yml     package installer playbook
files.yml        migration playbook to transfer my local files to the new machine

ansible.cfg      inventory + configuration
roles/           my custom roles directory
hosts            inventory file (not included)
edittasks.sh     helper script to edit all files
run.sh           run script for migration

```
## notes on playbooks

Not exactly production ready code here, rather a dirty hack but it works and suits the purpose for me.  
Further improvements may come in the future.

