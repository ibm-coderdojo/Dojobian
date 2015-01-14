#!/bin/bash

/usr/bin/wget --no-check-certificate -O /root/DojobianSystemUpdate.sh https://raw.githubusercontent.com/ibm-coderdojo/Dojobian/master/SystemUpdate.sh
/bin/chmod ug+x /root/DojobianSystemUpdate.sh

read -t 10 -p "Hit ENTER to close this window" 
exit 0
