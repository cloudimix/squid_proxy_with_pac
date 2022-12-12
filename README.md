# Squid Proxy with PAC
![test workflow](https://github.com/cloudimix/squid_proxy_with_pac/actions/workflows/checks.yml/badge.svg)</br>
Squid Proxy Server with Proxy Auto-Config (OCI)

## Configuration:
- In infrastructure/oci/terraform.tfvars set you oci tenancy_ocid.
- For set up the users and restricted domains, in group_vars/all change the default variables values for "cred" and "whitelist" and encrypt it with ansible-vault.
- $ make all
- In your browser change the automatic proxy configuration URL to:</br>
http://proxy_server_ip_address/proxy.pac
