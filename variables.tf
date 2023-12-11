variable "bastion" {
  description = "Bastion service input object"
  type = object({
    bastion_type = string,
    compartment_ocid = string,
    client_cidr_block_allow_list = string,
    dns_proxy_status = string,
    max_session_ttl_in_seconds = string,
    bastion_name = string,
    subnet_id = string,
    instance_id = string,
    session_display_name = string,
    session_key_details_public_key_content = string,
    session_key_type = string,
    session_session_lifecycle_state = string,
    session_session_ttl_in_seconds = string,
    session_target_resource_details_session_type_managed_ssh = string,
    session_target_resource_details_target_resource_port = number,
    target_resource_operating_system_user_name = string,
    instance_private_ip = string
  })
}