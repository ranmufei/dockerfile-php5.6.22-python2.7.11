FROM debian:latest

ENV PYTHONUNBUFFERED 1
ENV TERM=xterm

RUN apt-get update
RUN apt-get -y install php5 wget xz-utils build-essential openssl libssl-dev rsync
# Python 2.7.6:
RUN wget http://python.org/ftp/python/2.7.11/Python-2.7.11.tar.xz
RUN ls -la
RUN tar xf Python-2.7.11.tar.xz
WORKDIR Python-2.7.11
RUN ls
RUN ./configure --prefix=/usr/local --enable-unicode=ucs4 --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
RUN make && make altinstall
RUN wget https://bootstrap.pypa.io/ez_setup.py -O - > garb.py
RUN python2.7 garb.py
RUN mkdir /php-apps
RUN mkdir /python-apps

ADD . /personal
WORKDIR /personal

RUN pwd
RUN /usr/local/bin/easy_install-2.7 pip

RUN php -v