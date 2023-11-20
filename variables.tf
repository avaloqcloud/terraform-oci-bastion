variable "bastion_type" {
    type = string
  
}

variable "compartment_ocid" {
    type = string
  
}

variable "client_cidr_block_allow_list" {
    #type = string
    default = "0.0.0.0/0"
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
