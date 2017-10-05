# Dojobian


On boot menu select "Install"

Select a language (i.e. English)

Select your location (i.e. Ireland)

Configure the keyboard (i.e. Irish)

Configure the network
-  Select the primary network interface (i.e. wlan0)
-  Select the wireless network (i.e. IBMVISITOR)
-  Select the wireless network type (i.e. WEP/Open Network)
-  Leave blank the WEP key for wireless device wlan0
-  Type the hostname for the machine (i.e. coderdojo01 - read the label)
-  Type the domain name (i.e. ibm-coderdojo.com)

Setup users and passwords
-  Type the root password (i.e. coderdojo1)
-  Type the full name for a new user (i.e. Ninja)
-  Type the username for that acocunt (i.e. ninja - all in small letters)
-  Type the password for the new user (i.e. coderdojo1)

Partition disks
-  Select as partitioning method "Guided - use entire disk and set up LVM"
-  Select the disk to partition (ie: sda)
-  Select the partitioning scheme (i.e. All files in one partition)
-  Select "Yes" to write the changes to disks
-  Accept the proposed scheme selecting "Finish partitioning and write changes to disk"
-  Select "Yes" to write the changes to disk

Configure the package manager
If your network is not already available (e.g. IBMVISITOR):
-  Select "No" to avoid to use a network mirror at this stage
-  You will receive an error "Cannot access repository", ignore it selecting "Continue"
-  Proceed with GRUB section

If your network is already available (e.g. your home network)
-  Select "Yes" to use a network mirror at this stage
-  Select the closest archive mirror country (i.e. United Kingdom)
-  Select the Debian archive mirror (i.e. ftp.uk.debian.org)
-  Leave blank the HTTP proxy information
-  Proceed with GRUB section

Install the GRUB boot loader on a hard disk
-  Select "Yes" to install the GRUB boot loader to the master boot record

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
/usr/bin/wget --no-check-certificate -O - https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/DojobianSystemSetup.sh | /bin/bash
```
When during the setup appears a message like "Restart services during package upgrades without asking?", select "Yes"
