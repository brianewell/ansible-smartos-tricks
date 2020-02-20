# Ansible SmartOS Tricks

This collection of Ansible roles is the companion piece to my blog, [Stupid SmartOS Tricks](https://blog.brianewell.com/).

## Common Role

The common role performs the configuration and decrufting steps for a base SmartOS zone that I use in all other roles.  It is inherited into those other roles by default, but is also available for direct use.

### Configuration Variables

* **ansible_python_intrepreter**: String that can override the SmartOS default of `/opt/local/bin/python`
* **home_dataset**: Boolean that determines if a home dataset should be configured if delegated_dataset is configured in the zone manifest.
* **inputrc.config**: Dictionary that can be merged with existing inputrc configuration parameters
* **inputrc.bindings**: Dictionary that can be merged with existing inputrc key-bindings
* **sshd.key_types**: List that can override the default of dsa, ecdsa, ed25519 and rsa
* **sshd.config**: Dictionary of sshd configuration parameters can be merged with default sshd configuration parameters
* **sshd.match**: Dictionary of sshd match strings (as keys) and dictionaries (as values) of configuration parameters to use in sshd configuration.

## Ansible Role

The ansible role installs and configures a base SmartOS zone to act as an Ansible host to run this, and any other playbooks, templates and modules.

### Configuration Variables

* **ansible.config.{section name}**: Dictionary that can be merged with existing ansible configuration parameters

## MySQL Role

The mysql role installs and configures MySQL on a base SmartOS zone

### Configuration Variables

* **mysql.server**: Specify a specific fork of the MySQL server (default: mariadb, options: mariadb | mysql | percona )
* **mysql.recordsize**: Specify the recordsize of the underlying ZFS filesystem that the database is installed on (default: 16k)

## Neo4j Role

The neo4j role installs and configures Neo4j on a base SmartOS zone

### Configuration Variables

* **neo4j.user**: Specify the name of the user
* **neo4j.group**: Specify the name of the group
* **neo4j.project**: Specify the name of the project
* **neo4j.path**: Specify the path in which to install the database software
* **neo4j.conf_path**: Specify the path in which to store configuration data
* **neo4j.data_path**: Specify the path in which to install the database cluster
* **neo4j.recordsize**: Specify the recordsize of the underlying ZFS filesystem that the database is installed on (default: 16k)
* **neo4j.version**: Specify the version of Neo4j to install into the system (default: latest)

## PostgreSQL Role

The postgresql role installs and configures PostgreSQL on a base SmartOS zone

### Configuration Variables

* **postgresql.server**: Specify the version of PostgreSQL to install
* **postgresql.locale**: Specify the default locale
* **postgresql.max_connections**: Specify the maximum connection count
* **postgresql.shared_buffers**: Specify the shared buffer size
* **postgresql.recordsize**: Specify the ZFS filesystem recordsize
