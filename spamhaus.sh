#!/bin/bash
rm drop*
wget https://www.spamhaus.org/drop/drop_v4.json
#wget https://raw.githubusercontent.com/onezero1010101/spamhaus_drop/refs/heads/main/drop_v4.json
#jq -r 'select(.type == null) | (.cidr)' ${GITHUB_WORKSPACE}/drop_v4.json >> ${GITHUB_WORKSPACE}/dropnew.txt
jq -r 'select(.type == null) | (.cidr)' drop_v4.json >> dropnew.txt
echo ${PWD}
ls
