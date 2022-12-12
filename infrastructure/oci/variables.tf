variable "image_name" {
  description = "OCI ubuntu image name"
  type        = list(string)
}

variable "region" {
  description = "OCI default region"
  type        = string
  default     = "eu-frankfurt-1"
}

variable "tenancy_ocid" {
  description = "Set your tenancy ocid"
  type        = string
}

variable "id_rsa" {
  description = "Path to ssh public key file"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "oci_auth" {
  description = "OCI auth type"
  type        = string
  default     = "SecurityToken"
}

variable "oci_config_file_profile" {
  description = "OCI profile name"
  type        = string
  default     = "DEFAULT"
}
