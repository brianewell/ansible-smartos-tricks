# Ansible SmartOS Tricks

This collection of Ansible roles is the companion piece to my blog, [Stupid SmartOS Tricks](https://blog.brianewell.com/).

## Common Role

The common role performs the configuration and decrufting steps for a base SmartOS zone that I use in all other roles.  It is inherited into those other roles by default, but is also available for direct use.

### Configuration Variables

* **ansible_python_intrepreter**: String that can override the SmartOS default of `/opt/local/bin/python`
* **inputrc.config**: Dictionary that can be merged with existing inputrc configuration parameters
* **inputrc.bindings**: Dictionary that can be merged with existing inputrc key-bindings
* **sshd.key_types**: List that can override the default of dsa, ecdsa, ed25519 and rsa
* **sshd.config**: Dictionary that can be merged with existing sshd configuration parameters

## Ansible Role

The ansible role installs and configures a base SmartOS zone to act as an Ansible host to run this, and any other playbooks, templates and modules.

### Configuration Variables

* **ansible.config.{section name}**: Dictionary that can be merged with existing ansible configuration parameters

## MySQL Role

The mysql role installs and configures MySQL on a base SmartOS zone

### Configuration Variables

* **mysql.server**: Specify a specific fork of the MySQL server (default: mariadb, options: mariadb | mysql | percona )
* **mysql.recordsize**: Specify the recordsize of the underlying ZFS filesystem that the database is installed on (default: 16k)
