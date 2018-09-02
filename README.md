# raspi network server

## Steps

### Caching server setup

1. Update system packages
1. Install bind packages: `sudo apt install bind9 bind9utils bind9-doc dnsutils`
1. Update /etc/bind/named.conf.options by uncommenting `forwarders` section and replace `0.0.0.0` with '8.8.8.8` (Google DNS server)
1. Restart bind9 service to pick up changes: `sudo systemctl restrt bind9`
1. Verify working: `dig -x 127.0.0.1`


