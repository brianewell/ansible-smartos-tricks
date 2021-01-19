#!/bin/bash

# For now, install py39-pip and core ansible dependencies
/opt/local/bin/pkgin -y install py38-pip py38-cryptography

# Install ansible directly via pip
/opt/local/bin/pip install ansible

# Use Ansible to update ansible
/opt/local/bin/ansible-playbook ansible-bootstrap.yml
