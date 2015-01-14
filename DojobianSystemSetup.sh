#!/bin/bash

#######################################################################
DojobianSystemSetup.sh
#######################################################################
echo "
#######################################################################
Install tools
#######################################################################
"
/usr/bin/apt-get -y install vim vim-doc vim-scripts ctags
/usr/bin/apt-get -y install curl

echo " 
#######################################################################
Install development tools
#######################################################################
"
/usr/bin/apt-get -y install subversion subversion-tools
/usr/bin/apt-get -y install git git-doc git-cvs git-svn git-gui
/usr/bin/apt-get -y install eclipse*


/usr/bin/wget --no-check-certificate -O /root/DojobianSystemConfiguration.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemConfiguration.sh
/bin/chmod ug+x /root/DojobianSystemConfiguration.sh

/usr/bin/wget --no-check-certificate -O /root/DojobianSystemUpdate.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemUpdate.sh
/bin/chmod ug+x /root/DojobianSystemUpdate.sh

read -t 10 -p "Hit ENTER to close this window" 
exit 0
