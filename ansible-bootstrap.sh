#!/bin/env bash

/bin/env pkgin -y install ansible
/bin/env ansible-playbook ansible-bootstrap.yml
