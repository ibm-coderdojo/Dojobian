# Dojobian 10 Full Install

If you need just an upgrade from Debian 9 (stretch) to Debian 10 (buster) then follow the instructions in [UPGRADE-DEBIAN-9TO10.md](UPGRADE-DEBIAN-9TO10.md)

## Instructions
Put the usb stick with the debian image into the USB port and switch on the laptop.

Press F12 to access the boot menu and select the USB drive to boot

On boot menu select "Graphical install"

Select a language (i.e. English)

Select your location (i.e. Ireland)

Configure the keyboard (i.e. British English)

Configure the network
-  Select the wireless network interface as the primary one (i.e. wlan* or wlp*)
-  Select the wireless network (i.e. IBMInternet)
-  Select the wireless network type (i.e. WEP/Open Network)
-  Leave blank the WEP key for wireless device
-  Type the hostname for the machine (i.e. coderdojo-01 - read the label)
-  Type the domain name (i.e. ibm-coderdojo.com)

Setup users and passwords
-  Type the root password (i.e. coderdojo1)
-  Type the full name for a new user (i.e. ninja)
-  Type the username for that acocunt (i.e. ninja - all in small letters)
-  Type the password for the new user (i.e. coderdojo1)

Partition disks
-  Select as partitioning method "Guided - use entire disk"
-  Select the disk to partition (ie: sda)
-  Select the partitioning scheme (i.e. All files in one partition)
-  Accept the proposed scheme selecting "Finish partitioning and write changes to disk"
-  Select "Yes" to write the changes to disk

Configure the package manager
-  Select the closest archive mirror country (i.e. Ireland)
-  Select the Debian archive mirror (i.e. ftp.ie.debian.org)
-  Leave blank the HTTP proxy information
If your network is not already available (e.g. IBMInternet), then you will see an error:
"Bad archive mirror"
-  Select "Go Back" button
-  Select "Yes" on "Continue without a network mirror?" window
-  Select "Continue" on "Cannot access repository" window

Configure popularity-contest
-  Select "Yes" on "Participate in the package usage survey?" window

Software selection
-  Select checkboxes:
  -  Debian desktop environment
  -  ... GNOME
  -  SSH server
  -  standard system utilities
-  Deselect checkbox:
  -  print server
-  Select "Continue" to proceed

Install the GRUB boot loader on a hard disk
-  Select "Yes" to install the GRUB boot loader to the master boot record
-  Select the main device for the boot loades (i.e.: /dev/sda)

Finish the installation
-  Select continue to reboot the laptop
-  Remove the USB sticks while the system restarts


Configure the new system

Login as root

Configure Panel
-  Click "Use default config" to setup the Panel

Access the IBMVISITOR network
-  Open the browser and type www.ibm.com in the address bar
-  Use your Intranet credential to access the network and click "OK"
-  Wait for the popup screen that shows "Authentication successful" message and click "OK"
-  Then on the former page click on "click here"
-  You are now able to use the network

Post install configuration script
-  Open a teminal
-  Type this command:
```bash
wget --no-check-certificate -O - https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemSetup.sh | /bin/bash
```
When during the setup appears a message like "Restart services during package upgrades without asking?", select "Yes"
