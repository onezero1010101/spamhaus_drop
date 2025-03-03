#!/bin/bash
rm drop*
#wget https://www.spamhaus.org/drop/drop_v4.json
jq -r 'select(.type == null) | (.cidr)' ${GITHUB_WORKSPACE}/drop_v4.json >> ${GITHUB_WORKSPACE}/dropnew.txt
echo ${PWD}
