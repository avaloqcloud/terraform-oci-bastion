resource "oci_bastion_bastion" "this" {
    for_each = local.potential_bastion


    bastion_type = each.value.bastion_type
    compartment_id = each.value.compartment_ocid
    target_subnet_id = each.value.subnet_id

    client_cidr_block_allow_list = ["each.value.client_cidr_block_allow_list"]
    dns_proxy_status = each.value.dns_proxy_status
    max_session_ttl_in_seconds = each.value.max_session_ttl_in_seconds
    name = each.value.bastion_name
}

resource "oci_bastion_session" "this" {

  bastion_id = oci_bastion_bastion.bastion.id
  key_details {
    public_key_content = each.value.session_key_details_public_key_content
  }
  target_resource_details {
    session_type       = each.value.session_target_resource_details_session_type_managed_ssh
    target_resource_id = each.value.instance_id

    target_resource_operating_system_user_name = each.value.target_resource_operating_system_user_name
    target_resource_port                       = each.value.session_target_resource_details_target_resource_port
    target_resource_private_ip_address         = each.value.instance_private_ip
  }

  display_name           = each.value.session_display_name
  key_type               = each.value.session_key_type
  session_ttl_in_seconds = each.value.session_session_ttl_in_seconds
}
