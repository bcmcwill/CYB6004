#!/bin/bash
#execute IpInfo script
ip_info="$(/home/benm/scripts/portfolio/week4/IpInfo.sh)"
#only print out the lines that havent been processed
addresses=$(echo "$ip_info" | sed -n '/IP Address/ p')
#format output
echo -e "IP addresses on this computer are:\n$addresses"
exit 0