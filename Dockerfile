# Ambition in Docker

FROM ubuntu:14.04
MAINTAINER micah hausler, <micah.hausler@ambition.com>

RUN sed -i -e 's/deb-src\ http\:\/\/archive.ubuntu.com\/ubuntu\/\ precise\ main/\#deb-src\ http\:\/\/archive.ubuntu.com\/ubuntu\/\ precise\ main/g' /etc/apt/sources.list
######################
# Base package setup #
######################
RUN apt-get update --fix-missing
RUN apt-get -y install software-properties-common
RUN apt-get update
RUN apt-get -y install python-pip python-dev
RUN pip install boto requests httpie

RUN apt-get -y install htop git multitail vim vim-addon-manager vim-common vim-scripts \
    python-dev python-pip python-virtualenv pkg-config cython libpq-dev \
    libzmq-dev libffi-dev zip wget unzip curl man

# Nginx build requirements
RUN apt-get -y install debhelper libgeoip-dev liblua5.1-dev libmhash-dev libpam0g-dev libperl-dev libxslt1-dev po-debconf libpcre3 libpcre3-dev

# Pillow requirements
RUN apt-get -y install libtiff4-dev libjpeg8-dev libjpeg-dev \
    libpng12-dev zlib1g-dev libfreetype6-dev liblcms2-dev \
    libwebp-dev tcl8.5-dev tk8.5-dev

# Ambition package requirements
RUN apt-get -y install cython gfortran g++ gcc libpq-dev \
    libgraphviz-dev libfreetype6-dev libpng12-dev libjpeg8-dev \
    libblas-dev liblapack-dev mono-complete python-dev pkg-config

RUN adduser --home /home/ubuntu ubuntu
RUN usermod -a -G sudo ubuntu

ADD ./90-cloudimg-ubuntu /etc/sudoers.d/90-cloudimg-ubuntu

ADD ./vimrc /home/ubuntu/.vimrc
ADD ./profile /home/ubuntu/.profile
ADD ./bashrc /home/ubuntu/.bashrc
ADD ./bash_aliases /home/ubuntu/.bash_aliases

ADD ./vimrc /.vimrc
ADD ./profile /.profile
ADD ./bashrc /.bashrc
ADD ./bash_aliases /.bash_aliases

WORKDIR /home/ubuntu

RUN pip install ipython
RUN pip install werkzeug
RUN pip install pyzmq
RUN pip install tornado
RUN pip install Jinja2
RUN pip install numpy
RUN pip install pandas
RUN pip install httpie
RUN pip install matplotlib
#RUN pip install scipy
RUN pip install requests
RUN pip install django

RUN apt-get -y install python-software-properties

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
ENV HOME /home/ubuntu
WORKDIR /home/ubuntu
RUN ipython profile create default
ADD ./ipython_config.py /home/ubuntu/.ipython/profile_default/ipython_config.py
RUN mkdir /home/ubuntu/notebooks

EXPOSE 8888 8888

#ENTRYPOINT /home/ubuntu/env/bin/ipython notebook --ip='*' --port=8888 --pylab=inline
CMD ipython notebook --profile=default
