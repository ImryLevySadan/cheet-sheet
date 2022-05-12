#!/usr/bin/env bash
set -euo pipefail -o errtrace
IFS=$'\n\t'

#Create two files with crt and private key
# Name of the files is the same as the cn
filename=$1
days=$2

openssl req -x509 -sha256 -nodes -days $days -newkey rsa:4096 -subj '/O=www/CN='$filename -keyout $filename.key -out $filename.crt
