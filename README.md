# dockerfile-php5.6.22-python2.7.11

Dockerfile to construct container to run PHP scripts for PHP stacks designed to run through php-fpm dispatched 
through Nginx.  

Also contains Python2.7 equiped with pip, pythongit (for mapping storage against active branch), boto
and fabric.

MYSql DB management see https://github.com/iwd-sys/mysqldump for passing environment variables.

Extra packages include rsync for copying php into DOCUMENT_ROOT in deployment.

Good base image for current Python 2.7 development, production, and maintenence scripts

Comes with 2 directories to mount host volumes.

* /php-apps
* /python-apps
* /sql

Python 3.5 might be installed.

## Simple Use

docker run -t -i --name some-test-container fogcitymarathoner/dockerfile-php5.6.22-python2.7.11:latest /bin/bash

Dont forget to give container a name and delete it.

docker rm some-test-container

## Use MySQL Client
k	
~~~~
  export MYSQL_PORT_3306_TCP_ADDR=54.213.226.74
  export MYSQL_PORT_3306_TCP_PORT=3360
  export MYSQL_ENV_MYSQL_ROOT_PASSWORD=secret

  docker run -it --link ecs-dbs-5-mysql-c088c2bdcdcf88c8ca01:mysql --rm  fogcitymarathoner/dockerfile-php5.6.22-python2.7.11  sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'

~~~~
