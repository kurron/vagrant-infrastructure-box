#Overview
This project is a Vagrant box that is provisioned for Docker development.  It is a Ubuntu-based system and 
has many of the tools needed by a developer already installed.  The provisioning mechanism is based on Ansible.
I tend to tinker too much on my home network and end up screwing up working infrastructure, which then impacts 
my development.  This box will be the stable home for required infrastructure leaving me free to tinker to my
heart's content.

#Prerequisites

* [Vagrant](https://www.vagrantup.com/) installed and working
* [VirtualBox](https://www.virtualbox.org/) installed and working
* a working internet connection

#Building
All the components of the environment live in repositories on the internet so there is nothing to build.

#Installation
Type `vagrant up` and go get a cup of coffee.  The construction time of the box greatly depends on your internet speeds.

#Tips and Tricks

##RAM and CPU Settings
If you examine the `vagrantfile` file, you will see that the virtual machine is configured to use 4GB of RAM and
2 CPUs.  Feel free to change these values to match your computer's hardware.

##Low Disk Space
If an environment is used long enough, it is likely to run out of disk space.  The two main culprits are kernal updates 
filling up the `/boot` partition and Docker images filling up the `/` partition.  You have at least 3 options:

* throw away the environment and start fresh
* clean up the old kernels via `sudo apt-get autoremove`
* clean up Docker containers via `docker rm --volumes --force $(docker ps --all --quiet)`
* clean up Docker images, after cleaning up the containers, via `docker rmi --force $(docker images --quiet)`
 
##Verifying The Setup
Log into the system with a username of `vagrant` and password of `vagrant`.

##Installed Infrastructure
* [Docker Engine](https://docs.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Docker Machine](https://docs.docker.com/machine/)
* [Ansible](http://www.ansible.com/)

##Installed Software

* [Docker](https://www.docker.com/)

#Troubleshooting

## Partial Failure
Sometimes networks fail or mirror sites go down. If you experience a failure, you can attempt to resume the construction 
by issuing `vagrant provision` at the command line.  Vagrant will attempt to start over, but will skip any provisions that
have already taken place. 

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

