#!/usr/bin/env python
#######################################################################
#  AddPyDevCertificate.py
#  Add PyDev's certificate to Java's key and certificate database
#  Certificate file mus be downloaded from:
#  http://pydev.org/pydev_certificate.cer
#######################################################################

import os, sys
import pexpect

print "Adding pydev_certificate.cer to /usr/lib/jvm/java-6-openjdk-amd64/jre/lib/security/cacerts"

cwd = os.path.abspath (os.path.dirname(sys.argv[0]))
child = pexpect.spawn("keytool -import -file /root/pydev_certificate.cer -keystore /usr/lib/jvm/java-6-openjdk-amd64/jre/lib/security/cacerts")
child.expect("Enter keystore password:")
child.sendline("changeit")
if child.expect(["Trust this certificate?", "already exists"]) == 0:
   child.sendline("yes")
try:
   child.interact()
except OSError:
   pass

print "done"
