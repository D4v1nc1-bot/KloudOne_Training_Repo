#!/bin/bash
echo "THIS IS SIMPLE BASE64 DECRYPTOR."

echo "Enter the Base64 Password."
read PASS

for p in $(seq 1);
do
	echo $PASS | base64 -d	#Decrypting password
done
