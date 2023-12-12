resource "oci_bastion_bastion" "bastion" {
    
    bastion_type = var.bastion_type
    compartment_id = var.compartment_ocid
    target_subnet_id = var.subnet_id

    client_cidr_block_allow_list = var.client_cidr_block_allow_list
    dns_proxy_status = var.dns_proxy_status
    max_session_ttl_in_seconds = var.max_session_ttl_in_seconds
    name = var.bastion_name
}

resource "oci_bastion_session" "test_session_managed_ssh" {

  bastion_id = oci_bastion_bastion.bastion.id
  key_details {
    public_key_content = var.session_key_details_public_key_content
  }
  target_resource_details {
    session_type       = var.session_target_resource_details_session_type_managed_ssh
    target_resource_id = var.instance_id

    target_resource_operating_system_user_name = var.target_resource_operating_system_user_name
    target_resource_port                       = var.session_target_resource_details_target_resource_port
    target_resource_private_ip_address         = var.instance_private_ip
  }

  display_name           = var.session_display_name
  key_type               = var.session_key_type
  session_ttl_in_seconds = var.session_session_ttl_in_seconds
}
