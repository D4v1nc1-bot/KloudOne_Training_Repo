#!/bin/bash

echo "[+] Please enter you IP to scan"
read IP

while :
do
	echo -e "[+] Please enter your choice\n\n[0]NMAP\n[1]Nikto\n[2]Gobuster"
	read CH

		
	if [ $CH == 0 ]
	then
		echo "Using NMAP"
		nmap -sV -sC -A $IP
	
	elif [ $CH == 1 ]
	then
		echo "Using Nikto"
		nikto --host $IP

	elif [ $CH == 2 ]
	then
		echo "Using Gobuster"
		gobuster dir -u http://$IP -w /usr/share/wordlists/dirb/big.txt

	else
		echo "Invalid Option!"
		break	
	fi
done

        