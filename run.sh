#!/bin/bash

ansible-playbook playbook.yml -i hosts -k -K --check
