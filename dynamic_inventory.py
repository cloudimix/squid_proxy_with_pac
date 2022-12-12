#!/usr/bin/env python3
import re
import json
import subprocess

pattern = r"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"
master_public_ip = re.findall(pattern, subprocess.run(["make", "oci_output"], stdout=subprocess.PIPE).stdout.decode("utf-8"))
master_hosts = [f"squid_server-{i}" for i in range(1, len(master_public_ip)+1)]
hostvars_master = {master_hosts[i]: {"ansible_host": master_public_ip[i]} for i in range(len(master_public_ip))}
inventory_pattern = {
                     "hosts": master_public_ip,
                     "_meta": {
                       "hostvars": hostvars_master
                               }
                     }
print(json.dumps(inventory_pattern))
