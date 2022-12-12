#!/usr/bin/env bash

.ONESHELL:

.SILENT: id_rsa infra proxy oci_output

.PHONY: id_rsa
id_rsa:
	ansible-playbook id_rsa_generating.yaml

.PHONY: infra
infra:
	cd infrastructure/oci/
	terraform init
	terraform apply -auto-approve

.PHONY: proxy
proxy:
	if [ ! -f ~/.vault_pass ]; then
	    echo testpass > ~/.vault_pass;
	fi
	ansible-galaxy install -r requirements.yaml
	ansible-playbook -i dynamic_inventory.py --vault-password-file ~/.vault_pass play_squid.yaml -vv
	cd infrastructure/oci/ && terraform output
	
.PHONY: oci_output
oci_output:
	cd infrastructure/oci/
	terraform output

.PHONY: test
test:

.PHONY: clean
clean:

.PHONY: all
all: id_rsa infra proxy
