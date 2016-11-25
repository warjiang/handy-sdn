#!/bin/bash
kill `cd /usr/local/var/run/openvswitch && cat ovsdb-server.pid ovs-vswitchd.pid`
aptitude remove openvswitch-common openvswitch-datapath-dkms openvswitch-controller openvswitch-pki openvswitch-switch -y

rmmod openvswitch

rm -rf /usr/local/bin/ovsdb-* /usr/local/sbin/ovsdb-* /usr/bin/ovsdb-* /usr/sbin/ovsdb-*
rm -rf /usr/local/bin/ovs-* /usr/local/sbin/ovs-* /usr/bin/ovs-* /usr/sbin/ovs-*
rm -rf /usr/local/bin/ovn-* /usr/local/sbin/ovn-* /usr/bin/ovn-* /usr/sbin/ovn-*