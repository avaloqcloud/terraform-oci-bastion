resource "oci_bastion_bastion" "bastion" {
    #Required
    bastion_type = var.bastion_type
    compartment_id = var.compartment_ocid
    target_subnet_id = var.subnet_id

    #Optional
    client_cidr_block_allow_list = var.client_cidr_block_allow_list
    #defined_tags = {"foo-namespace.bar-key"= "value"}
    dns_proxy_status = var.dns_proxy_status
    #freeform_tags = {"bar-key"= "value"}
    max_session_ttl_in_seconds = var.max_session_ttl_in_seconds
    name = var.bastion_name
    #phone_book_entry = var.bastion_phone_book_entry
    #static_jump_host_ip_addresses = var.static_jump_host_ip_addresses
}