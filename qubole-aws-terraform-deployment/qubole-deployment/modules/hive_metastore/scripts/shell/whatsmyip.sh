#!/usr/bin/env bash

#credits https://www.itwonderlab.com/use-your-public-internet-ip-address-terraform/

set -e
INTERNETIP="$(dig +short myip.opendns.com @resolver1.opendns.com -4)"
jq -n --arg internetip "$INTERNETIP" '{"internet_ip":$internetip}'
