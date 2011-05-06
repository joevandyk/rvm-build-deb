#!/bin/sh
VERSION=1.0.0.0.1
NAME=rvm
ARCH=i386

echo '#!/bin/sh' > post-install.sh
echo "chown :rvm -R /usr/local/rvm" >> post-install.sh
chmod +x post-install.sh

fpm -s dir -t deb -n $NAME -v $VERSION --post-install post-install.sh -a $ARCH /usr/local/rvm /etc/profile.d/rvm.sh /etc/gemrc
