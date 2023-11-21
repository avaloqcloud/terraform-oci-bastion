variable "bastion_type" {
    type = string
}

variable "compartment_ocid" {
    type = string 
}

variable "client_cidr_block_allow_list" {
    default = ["0.0.0.0/0"]
}

variable "dns_proxy_status" {
    type = string 
}

variable "max_session_ttl_in_seconds" {
    type = string
}

variable "bastion_name" {
    type = string
}

variable "subnet_id" {
    type = string
}

############### Bastion Session Variables

variable "instance_id" { 
    #default = "ocid1.instance.oc1.eu-zurich-1.an5heljr2f6evfqcve2bq6fgwv43retht2vk7lsooelmkui6wp22237mi3ma"
}

variable "session_display_name" {
  default = "bastionSessionExample"
}

variable "session_key_details_public_key_content" {
  #default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9HLTG/GtjHeFkZ9TCY6we0rK68oqAd2WkUj181N8vpt5ejYG7Oz6NpR4H8NSI5Vpra9DpGZMJRcMD56hj8vl3fNDcZp9j9D4ZmIuNBJ6rqOTOspnLoknT/c+5HILMzSgvFVFBvVQ4ftM030ldMsaGuCIyo8O6b3eB5SxSvoXZBvupaKhhrfQGilrNuVqtt7GJNB6aVXPfL/DOhX0DXOxwq/FVRMH1ovIXgoeg0rzzX5q3KYGVq2ZNWFYpVzFihf7ecJyvQ1SYOF6okrN+bKq3iQ+oKcveAfvpjma+LEI+TrZEJ7Xd0A/b1gh4HJsSa+pKCP+MYqjkFkEE3zqoDWYB bastions"
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
