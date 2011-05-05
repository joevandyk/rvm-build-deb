#!/bin/sh
fpm -s dir -t deb -n rvm -v 1.0.0.0.1 --post-install post-install.sh -a i386 /usr/local/rvm /etc/profile.d/rvm.sh /etc/gemrc
