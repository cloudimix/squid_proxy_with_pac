terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
  # Comment or delete this block if you want to save the state file localy
  #########################################################################
  cloud {
    organization = "dimi"
    workspaces {
      name = "oci"
    }
  }
  #########################################################################
}

provider "oci" {
  region              = var.region
  auth                = var.oci_auth
  config_file_profile = var.oci_config_file_profile
}
