# Ansible SmartOS Tricks

This collection of Ansible roles is the companion piece to my blog, [Stupid SmartOS Tricks](https://blog.brianewell.com/).

## Common Role

The common role performs the configuration and decrufting steps for a base SmartOS zone that I use in all other roles.  It is inherited into those other roles by default, but is also available for direct use.

### Configurable variables

* **ansible_python_intrepreter**: String that can override the SmartOS default of `/opt/local/bin/python`
* **inputrc.config**: Dictionary that can be merged with existing inputrc configuration parameters
* **inputrc.bindings**: Dictionary that can be merged with existing inputrc key-bindings
* **sshd.key_types**: List that can override the default of dsa, ecdsa, ed25519 and rsa
* **sshd.config**: Dictionary that can be merged with existing sshd configuration parameters
