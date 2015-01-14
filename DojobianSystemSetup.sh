#!/bin/bash
#######################################################################
#  DojobianSystemSetup.sh
#######################################################################

echo "
#######################################################################
Install tools
#######################################################################
"
/usr/bin/apt-get -y install vim vim-doc vim-scripts ctags
/usr/bin/apt-get -y install curl
/usr/bin/apt-get -y install openjdk-7-jdk icedtea-7-plugin icedtea-7-jre-jamvm fonts-ipafont-gothic fonts-ipafont-mincho ttf-wqy-microhei ttf-wqy-zenhei ttf-indic-fonts

echo " 
#######################################################################
Install development tools
#######################################################################
"
/usr/bin/apt-get -y install subversion subversion-tools
/usr/bin/apt-get -y install git git-doc git-cvs git-svn git-gui
/usr/bin/apt-get -y install eclipse*


/usr/bin/wget --no-check-certificate -O /root/AddPyDevCertificate.py https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/AddPyDevCertificate.py
/bin/chmod ug+x /root/AddPyDevCertificate.py

/usr/bin/wget --no-check-certificate -O /root/AddPyDevEclipsePlugin.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/AddPyDevEclipsePlugin.sh
/bin/chmod ug+x /root/AddPyDevEclipsePlugin.sh

/usr/bin/wget --no-check-certificate -O /root/DojobianSystemConfiguration.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemConfiguration.sh
/bin/chmod ug+x /root/DojobianSystemConfiguration.sh

/usr/bin/wget --no-check-certificate -O /root/DojobianSystemUpdate.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemUpdate.sh
/bin/chmod ug+x /root/DojobianSystemUpdate.sh

read -t 10 -p "Hit ENTER to close this window" 
exit 0
