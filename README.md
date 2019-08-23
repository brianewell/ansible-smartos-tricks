# Ansible SmartOS Tricks

This collection of Ansible roles is the companion piece to my blog, [Stupid SmartOS Tricks](https://blog.brianewell.com/).

## Common Role

The common role performs the configuration and decrufting steps for a base SmartOS zone that I use in all other roles.  It is inherited into those other roles by default, but is also available for direct use.

### Configurable variables

* **ansible_python_intrepreter**: This parameter can be overridden from it's SmartOS default of `/opt/local/bin/python`
