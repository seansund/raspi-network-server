#!/bin/bash

subnet=10.15.19
zonename=thesundbergs.lan

host=$1
ipaddress=$2

echo "@       IN  A           ${subnet}.${ipaddress}" >> ./config/etc/bind/for.${zonename}
echo "${host}  IN  A           ${subnet}.${ipaddress}" >> ./config/etc/bind/for.${zonename}
echo "${host}  IN  A           ${subnet}.${ipaddress}" >> ./config/etc/bind/rev.${zonename}
echo "${ipaddress}       IN  PTR         ${host}.${zonename}." >> ./config/etc/bind/rev.${zonename}

