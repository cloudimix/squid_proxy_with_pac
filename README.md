# Squid Proxy with PAC
![test workflow](https://github.com/cloudimix/wireguard_vpn/actions/workflows/checks.yml/badge.svg)</br>
Squid Proxy Server with Proxy Auto-Config (OCI)

## Configuration:
- For set up the users and restricted domains, in group_vars/all change the default variables values for "cred" and "whitelist" and encrypt it with ansible-vault. 
- $ make all
- In your browser change the automatic proxy configuration URL to:</br>
http://<proxy server ip address>/proxy.pac
