#!/bin/bash

echo "Enter your IP to find hidden directories"
read IP

for p in $(seq 1);
do
	gobuster dir -u http://$IP -w /usr/share/wordlists/dirb/big.txt -x php,html,txt
done
