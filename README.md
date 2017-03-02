# LearningLocker on CentOS7

The main intent of this repository is for developers of LearningLocker (v1) to rapidly create a local instance of LearningLocker. 

This project contains [Vagrant](https://www.vagrantup.com/) and [Ansible](http://www.ansible.com/) scripts to provision [CentOS7](https://www.centos.org/) machines with [LearningLocker](http://learninglocker.net/). 

This LearningLocker installation will depend on [Apache2](http://httpd.apache.org/) and [MongoDB](https://www.mongodb.org/).

## Configuration

1. Copy _vars.secret.yml.edit_ file to  _vars.secret.yml_.
2. Edit the _vars.secret.yml_ file following the instructions detailed in the file.
3. Modify the learninglocker file in the _group\_vars_ directory by specifying the ll_repo and ll_repo_version.

If you need to use a proxy, please see the _proxy_ fork of this repository.

## Typical usage

This section explains two use cases of this project:

 1. Create one VM machine with LL installed.
 2. Create two VM machines with LL installed: one for the webserver and the other for the database.

### Use case 1. Create one VM machine

To create a virtual machine and provision it with LearningLocker, simply run:

    vagrant up

If the installation is completed successfully, you will be able to:

 * Access LL through your web browser: http://localhost:8082
 * Connect to the machine: ```vagrant ssh```

### Use case 2. Create two VM machines

To create a virtual machine and provision it with LearningLocker, modify the _Vagrantfile_:
From this:

    machines_file ||= './vagrant/one_machine'
    
To this:

    machines_file ||= './vagrant/two_machines'

If the installation is completed successfully, you will be able to:

 * Access LL through your web browser: http://localhost:8082
 * Connect to the machines:
  * ```vagrant ssh ll-web```
  * ```vagrant ssh ll-db```
    
  
# Acknowledgements
To create this I relied heavily on the Vagrant/Ansible playbook written by Aitor Gómez-Goiri that can be found here: https://github.com/gomezgoiri/learninglocker-centos7 
