#!/bin/bash
#######################################################################
#  DojobianSystemSetup.sh
#######################################################################

echo " 
#######################################################################
#  Configure and update package repository
#######################################################################
"
/usr/bin/wget --no-check-certificate -O /etc/apt/apt.conf.d/99defaultrelease https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/apt.conf.d/99defaultrelease
/usr/bin/wget --no-check-certificate -O /etc/apt/preferences.d/security.pref https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/preferences.d/security.pref
/usr/bin/wget --no-check-certificate -O /etc/apt/preferences.d/stable.pref https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/preferences.d/stable.pref
/usr/bin/wget --no-check-certificate -O /etc/apt/preferences.d/testing.pref https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/preferences.d/testing.pref
/usr/bin/wget --no-check-certificate -O /etc/apt/preferences.d/unstable.pref https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/preferences.d/unstable.pref
/usr/bin/wget --no-check-certificate -O /etc/apt/preferences.d/experimental.pref https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/preferences.d/experimental.pref
/usr/bin/wget --no-check-certificate -O /etc/apt/sources.list.d/security.list https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/sources.list.d/security.list
/usr/bin/wget --no-check-certificate -O /etc/apt/sources.list.d/stable.list https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/sources.list.d/stable.list
/usr/bin/wget --no-check-certificate -O /etc/apt/sources.list.d/testing.list https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/sources.list.d/testing.list
/usr/bin/wget --no-check-certificate -O /etc/apt/sources.list.d/unstable.list https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/sources.list.d/unstable.list
/usr/bin/wget --no-check-certificate -O /etc/apt/sources.list.d/experimental.list https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/apt/sources.list.d/experimental.list
/usr/bin/dpkg --add-architecture i386
/usr/bin/apt-get update
/usr/bin/apt-get -y upgrade

echo "
#######################################################################
#  Install tools
#######################################################################
"
/usr/bin/apt-get -y install -t stable thunar-gtkhash thunar-vcs-plugin
/usr/bin/apt-get -y install -t stable vim vim-doc vim-scripts ctags leafpad gedit gedit-plugins
/usr/bin/apt-get -y install -t stable grsync
/usr/bin/apt-get -y install -t stable curl
/usr/bin/apt-get -y install -t stable dialog
/usr/bin/apt-get -y install -t stable gpa
/usr/bin/apt-get -y install -t stable openjdk-7-jdk icedtea-7-plugin icedtea-7-jre-jamvm fonts-ipafont-gothic fonts-ipafont-mincho ttf-wqy-microhei ttf-wqy-zenhei ttf-indic-fonts
/usr/bin/update-alternatives --set java /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java

echo "
#######################################################################
#  Install graphical tools
#######################################################################
"
/usr/bin/apt-get -y install -t stable gcolor2
/usr/bin/apt-get -y install -t stable inkscape
/usr/bin/apt-get -y install -t stable dia
/usr/bin/apt-get -y install -t stable recordmydesktop

echo "
#######################################################################
#  Install browsers
#######################################################################
"
/usr/bin/apt-get -y install -t stable iceweasel flashplugin-nonfree xul-ext-all-in-one-sidebar xul-ext-autofill-forms xul-ext-automatic-save-folder xul-ext-debianbuttons xul-ext-firebug xul-ext-firexpath xul-ext-greasemonkey xulrunner-dev browser-plugin-vlc xul-ext-scrapbook xul-ext-webdeveloper xulrunner-24.0
/usr/bin/apt-get -y install -t stable libdbusmenu-gtk4 libindicator7 libappindicator1
/usr/bin/wget --no-check-certificate -O /root/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
/usr/bin/dpkg -i /root/google-chrome-stable_current_amd64.deb
/bin/rm /root/google-chrome-stable_current_amd64.deb

echo " 
#######################################################################
#  Install development tools
#######################################################################
"
/usr/bin/apt-get -y install -t stable subversion subversion-tools
/usr/bin/apt-get -y install -t stable git git-doc git-cvs git-svn git-gui
/usr/bin/apt-get -y install -t stable geany
/usr/bin/apt-get -y install -t stable diffuse
/usr/bin/apt-get -y install eclipse*
/usr/bin/apt-get -y install -t stable scratch squeak-plugins-scratch-dbg etoys pulseaudio pavumeter pavucontrol paman paprefs

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
#  Install Cloud Foundry Command Line Interface
#######################################################################
"
/usr/bin/wget --no-check-certificate -O /root/cf-cli_amd64.deb https://cli.run.pivotal.io/stable?release=debian64&version=6.9.0&source=github-rel
/usr/bin/dpkg -i /root/cf-cli_amd64.deb
/bin/rm /root/cf-cli_amd64.deb

echo " 
#######################################################################
#  Install development tools: App Inventor
#######################################################################
"
/usr/bin/apt-get -y install lib32z1
/usr/bin/apt-get -y -t testing install libc6-dev
/usr/bin/wget -O /root/appinventor2-setup_1.1_all.deb http://commondatastorage.googleapis.com/appinventordownloads/appinventor2-setup_1.1_all.deb
/usr/bin/dpkg -i /root/appinventor2-setup_1.1_all.deb
/bin/rm /root/appinventor2-setup_1.1_all.deb
/usr/bin/wget --no-check-certificate -O /etc/udev/rules.d/51-android.rules https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/etc/udev/rules.d/51-android.rules
/bin/chmod a+r /etc/udev/rules.d/51-android.rules

echo " 
#######################################################################
#  Install development tools: Scratch 2
#######################################################################
"
/usr/bin/apt-get -y lib32asound2 lib32gcc1 lib32ncurses5 lib32stdc++6 lib32z1 lib32nss-mdns
/usr/bin/apt-get -y -t testing install libnss3 libnspr4
#/usr/bin/wget -O /root/libnss3-1d_3.14.5-1_deb7u3_i386.deb http://mirrors.kernel.org/debian/pool/main/n/nss/libnss3-1d_3.14.5-1%2bdeb7u3_i386.deb
#/usr/bin/dpkg-deb -x /root/libnss3-1d_3.14.5-1_deb7u3_i386.deb /tmp/libnss3
#/bin/mv /tmp/libnss3/usr/lib/i386-linux-gnu/lib* /usr/lib32/
#/usr/bin/wget -O /root/libnspr4-0d_4.9.2-1_deb7u2_i386.deb http://mirrors.kernel.org/debian/pool/main/n/nspr/libnspr4-0d_4.9.2-1%2bdeb7u2_i386.deb
#/usr/bin/dpkg-deb -x /root/libnspr4-0d_4.9.2-1_deb7u2_i386.deb /tmp/libnspr4
#/bin/mv /tmp/libnspr4/usr/lib/i386-linux-gnu/lib* /usr/lib32/
#/bin/ln -s /usr/lib32/libnss3.so.1d /usr/lib32/libnss3.so
#/bin/ln -s /usr/lib32/libssl3.so.1d /usr/lib32/libssl3.so
#/bin/ln -s /usr/lib32/libnspr4.so.0d /usr/lib32/libnspr4.so
/usr/bin/apt-get -y install ia32-libs ia32-libs-gtk libgtk2.0-0
/bin/ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
/bin/ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
export GNOME_DESKTOP_SESSION_ID=default
/usr/bin/wget -O /root/AdobeAIRInstaller.bin http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin
/bin/chmod ug+x /root/AdobeAIRInstaller.bin
/root/AdobeAIRInstaller.bin
/usr/bin/wget -O /root/Scratch-430.air http://cdn.scratch.mit.edu/scratchr2/static/sa/Scratch-430.air
/bin/chmod ug+x /root/Scratch-430.air
/usr/bin/Adobe\ AIR\ Application\ Installer /root/Scratch-430.air

echo “GNOME_DESKTOP_SESSION_ID=default” >> /etc/environment

#/bin/rm -rf /tmp/libnss3
#/bin/rm -rf /tmp/libnspr4
#/bin/rm /root/libnss3-1d_3.14.5-1_deb7u3_i386.deb
#/bin/rm /root/libnspr4-0d_4.9.2-1_deb7u2_i386.deb
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

echo " 
#######################################################################
#  Install desktop links
#######################################################################
"
/usr/bin/wget --no-check-certificate -O /root/Desktop/DojobianSystemConfiguration.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/Desktop/DojobianSystemConfiguration.sh
/usr/bin/wget --no-check-certificate -O /root/Desktop/DojobianSystemUpdate.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/Desktop/DojobianSystemUpdate.sh
/usr/bin/wget --no-check-certificate -O /root/Desktop/Scratch2.desktop https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/Desktop/Scratch2.desktop
/bin/cp /root/Desktop/Scratch2.desktop /home/ninja/Desktop/
/usr/bin/wget --no-check-certificate -O /root/Desktop/aiStarter.desktop https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/Desktop/aiStarter.desktop
/bin/cp /root/Desktop/aiStarter.desktop /home/ninja/Desktop/

echo " 
#######################################################################
#  The configuration script execution is completed
#######################################################################
"read -t 10 -p "Hit ENTER to close this window" 
exit 0
