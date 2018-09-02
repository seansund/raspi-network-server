#!/bin/bash

zonename=thesundbergs.lan

named-checkconf ./config/etc/bind/named.conf.local
named-checkzone ${zonename} ./config/etc/bind/for.${zonename}
named-checkzone ${zonename} ./config/etc/bind/rev.${zonename}

