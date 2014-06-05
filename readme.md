# Node.js / MongoDB / Ubuntu 14.04 64-bit Vagrant Box
#

Installation
-------------------------

- Install the latest version of [Virtualbox](https://www.virtualbox.org/wiki/Downloads).
- Install the latest version of [Vagrant](http://www.vagrantup.com/downloads.html).
- Clone this repository.

-------------------------------

* Open a terminal and cd to this directory.
* `vagrant up` will start the development virtual machine in virtualbox.
    * It'll be slow the first time, an OS image has to download.
* `vagrant ssh` will drop you into a shell on the virtual machine.
* `vagrant destroy` will shutdown and remove the virtual machine.

Default Environment
-------------------------------

#### Once started with `vagrant up`, the following actions will occur:
* The root directory of this project will be mirrored between your local computer and /vagrant/* on the VM.
* /vagrant/www will be linked to /var/www.
* Node.js will be invoked, pointing to /var/www/default/server.js.
* The VM will be given an IP address of 10.0.33.34, and your local computer's port 8080 will be forwarded to the VM.
    * This means the default server.js is available at http://10.0.33.34 or http://localhost:8080.
* Saving changes under `www` will cause the server to automatically restart.
    * You can develop using tools on your computer and the changes are reflected in the VM.

#### The template has the following pre-installed:
* Node.js
* Supervisor
* MongoDB

Further Reading
------------------------------
- [Vagrant Documentation](http://docs.vagrantup.com/)
- [Node.js API](http://nodejs.org/api/)
- [Supervisor Github](https://github.com/isaacs/node-supervisor)
- [MongoDB Manual](http://docs.mongodb.org)