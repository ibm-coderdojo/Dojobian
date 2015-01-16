#!/bin/bash
#######################################################################
#  DojobianSystemSetup.sh
#######################################################################

echo " 
#######################################################################
#  Configure package repository
#######################################################################
"
/usr/bin/wget --no-check-certificate -O /etc/apt/sources.list https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/sources.list

echo "
#######################################################################
#  Install tools
#######################################################################
"
/usr/bin/apt-get -y install vim vim-doc vim-scripts ctags
/usr/bin/apt-get -y install curl
/usr/bin/apt-get -y install dialog
/usr/bin/apt-get -y install openjdk-7-jdk icedtea-7-plugin icedtea-7-jre-jamvm fonts-ipafont-gothic fonts-ipafont-mincho ttf-wqy-microhei ttf-wqy-zenhei ttf-indic-fonts
/usr/bin/update-alternatives --set java /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java

echo "
#######################################################################
#  Install browsers
#######################################################################
"
/usr/bin/apt-get -y install iceweasel flashplugin-nonfree xul-ext-all-in-one-sidebar xul-ext-autofill-forms xul-ext-automatic-save-folder xul-ext-debianbuttons xul-ext-firebug xul-ext-firexpath xul-ext-greasemonkey xulrunner-dev browser-plugin-vlc xul-ext-scrapbook xul-ext-webdeveloper xulrunner-24.0
/usr/bin/apt-get -y install libdbusmenu-gtk4 libindicator7 libappindicator1
/usr/bin/wget --no-check-certificate -O /root/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
/usr/bin/dpkg -i /root/google-chrome-stable_current_amd64.deb
/bin/rm /root/google-chrome-stable_current_amd64.deb

echo " 
#######################################################################
#  Install development tools
#######################################################################
"
/usr/bin/apt-get -y install subversion subversion-tools
/usr/bin/apt-get -y install git git-doc git-cvs git-svn git-gui
/usr/bin/apt-get -y install eclipse*
/usr/bin/apt-get -y install scratch squeak-plugins-scratch-dbg etoys pulseaudio pavumeter pavucontrol paman paprefs

echo " 
#######################################################################
#  Install development tools: PyDev
#######################################################################
"
/usr/bin/wget --no-check-certificate -O /root/AddPyDevCertificate.py https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/AddPyDevCertificate.py
/bin/chmod ug+x /root/AddPyDevCertificate.py
/usr/bin/wget --no-check-certificate -O /root/AddPyDevEclipsePlugin.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/AddPyDevEclipsePlugin.sh
/bin/chmod ug+x /root/AddPyDevEclipsePlugin.sh
/root/AddPyDevEclipsePlugin.sh
/bin/rm /root/AddPyDevEclipsePlugin.sh
/bin/rm /root/AddPyDevCertificate.py
/bin/rm /root/pydev_certificate.cer

echo " 
#######################################################################
#  Install development tools: Scratch 2
#######################################################################
"
/usr/bin/apt-get -y lib32asound2 lib32gcc1 lib32ncurses5 lib32stdc++6 lib32z1 lib32nss-mdns
/usr/bin/wget -O /root/libnss3-1d_3.14.5-1%2bdeb7u3_amd64.deb http://mirrors.kernel.org/debian/pool/main/n/nss/libnss3-1d_3.14.5-1%2bdeb7u3_amd64.deb
/usr/bin/dpkg -i /root/libnss3-1d_3.14.5-1%2bdeb7u3_amd64.deb
/usr/bin/wget -O /root/libnspr4-0d_4.9.2-1%2bdeb7u2_amd64.deb http://mirrors.kernel.org/debian/pool/main/n/nspr/libnspr4-0d_4.9.2-1%2bdeb7u2_amd64.deb
/usr/bin/dpkg -i /root/libnspr4-0d_4.9.2-1%2bdeb7u2_amd64.deb
/usr/bin/wget -O /root/AdobeAIRInstaller.bin http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin
/bin/chmod ug+x /root/AdobeAIRInstaller.bin

/usr/bin/wget -O /root/Scratch-430.air http://cdn.scratch.mit.edu/scratchr2/static/sa/Scratch-430.air
/bin/chmod ug+x /root/Scratch-430.air

/bin/rm /root/libnss3-1d_3.14.5-1%2bdeb7u3_amd64.deb
/bin/rm /root/libnspr4-0d_4.9.2-1%2bdeb7u2_amd64.deb
/bin/rm /root/AdobeAIRInstaller.bin
/bin/rm /root/Scratch-430.air

echo " 
#######################################################################
#  Install configuration and update scripts
#######################################################################
"
/usr/bin/wget --no-check-certificate -O /root/DojobianSystemConfiguration.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemConfiguration.sh
/bin/chmod ug+x /root/DojobianSystemConfiguration.sh

/usr/bin/wget --no-check-certificate -O /root/DojobianSystemUpdate.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemUpdate.sh
/bin/chmod ug+x /root/DojobianSystemUpdate.sh

read -t 10 -p "Hit ENTER to close this window" 
exit 0
