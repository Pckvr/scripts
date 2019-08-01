#!/bin/bash

public_ip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "ip is stored in varaiable public_ip"
dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}'


