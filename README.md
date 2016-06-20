# dockerfile-php5.6.22-python2.7.11

Dockerfile to construct container to run PHP scripts for PHP stacks designed to run through php-fpm dispatched 
through Nginx.  Also contains Python2.7 equiped with pip, pythongit (for mapping storage against active branch),
and fabric.

Extra packages include rsync for copying php into DOCUMENT_ROOT in deployment.

Good base image for current Python 2.7 development, production, and maintenence scripts

Comes with 2 directories to mount host volumes.

* /php-apps
* /python-apps

Python 3.5 might be installed.