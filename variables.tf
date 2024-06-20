variable "user_ocid" {
  type = string
}

variable "fingerprint_id" {
  type = string
}

variable "tenancy_ocid" {
  type = string
}

variable "private_key_path" {
  description = "The path to the private key"
  type        = string
}

variable "region" {
  type = string
  default = "eu-dcc-zurich-1" 
}

variable "bastion_type" {
    type = string
    default = "standard"
}

variable "compartment_ocid" {
    type = string 
}

variable "client_cidr_block_allow_list" {
    description = "A list of address ranges in CIDR notation that you want to allow to connect to sessions hosted by this bastion"
    default = ["0.0.0.0/0"]
    type = list(string)
}

variable "dns_proxy_status" {
  type = string
  default = "DISABLED"
  description = "Flag to enable FQDN and SOCKS5 Proxy Support. Example: ENABLED, DISABLED"
}

variable "max_session_ttl_in_seconds" {
  type = number
  default = 10800
  description = "The maximum amount of time that any session on the bastion can remain active."
}

variable "bastion_name" {
    type = string
    default = ""
}

variable "subnet_id" {
  type = string
}

variable "instance_id" { 
  type = string
}

variable "session_display_name" {
  type = string
  default = ""
}

variable "session_key_details_public_key_content" {
  type = string
}

variable "session_key_type" {
  type = string
  default = "PUB"
}

variable "session_session_lifecycle_state" {
  type = string
  default = "ACTIVE"
}

variable "session_session_ttl_in_seconds" {
  type = number
  default = 1800
}

variable "session_target_resource_details_session_type_managed_ssh" {
  type = string
  default = "MANAGED_SSH"
}

variable "session_target_resource_details_target_resource_port" {
  type = number
  default = 22
} 

variable "target_resource_operating_system_user_name" {
  type = string
  default = "opc"
}

variable "instance_private_ip" {
  type = string
  default = ""
}

