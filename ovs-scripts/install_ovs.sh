#!/bin/bash

# download ovs via http://openvswitch.org/releases/
# wget http://openvswitch.org/releases/openvswitch-2.3.1.tar.gz
# tar xvf openvswitch-2.3.1.tar.gz
# cd openvswitch-2.3.1


# install prerequisite via apt-get
apt-get install build-essential \
				openssl libssl-dev \
				autoconf automake libtool \

# make && make install
./boot.sh
./configure --prefix=/usr/local --with-linux=/lib/modules/`uname -r`/build
make -j4
make install


# load modules
modprobe gre
insmod datapath/linux/openvswitch.ko
make modules_install
modprobe openvswitch