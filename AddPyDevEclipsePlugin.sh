#!/bin/bash
#######################################################################
#  AddPyDevEclipsePlugin.sh
#######################################################################

/usr/bin/wget -O /root/pydev_certificate.cer http://pydev.org/pydev_certificate.cer

/root/AddPyDevCertificate.py

/usr/local/eclipse/eclipse -nosplash \
   -application org.eclipse.equinox.p2.director \
   -repository http://pydev.org/updates/ \
   -destination /usr/local/eclipse \
   -installIU org.python.pydev.feature.feature.group
