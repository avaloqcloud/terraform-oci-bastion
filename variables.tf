variable "bastion_type" {
    type = string
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
}

variable "max_session_ttl_in_seconds" {
}

variable "bastion_name" {
    type = string
}

variable "subnet_id" {
}

variable "instance_id" { 
}

variable "session_display_name" {
  default = "bastionSession"
}

variable "session_key_details_public_key_content" {
}

variable "session_key_type" {
  default = "PUB"
}

variable "session_session_lifecycle_state" {
  default = "ACTIVE"
}

variable "session_session_ttl_in_seconds" {
  default = 1800
}

variable "session_target_resource_details_session_type_managed_ssh" {
  default = "MANAGED_SSH"
}

variable "session_target_resource_details_target_resource_port" {
  default = 22
} 

variable "target_resource_operating_system_user_name" {
    default = "opc"
}

variable "instance_private_ip" {
}
