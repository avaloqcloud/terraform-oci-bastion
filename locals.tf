locals {
    
    potential_bastion = length(data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items) < 1 ? {
	"resource" = {
            bastion_id                                                   = var.bastion.bastion.bastion_id != null ? var.bastion.bastion_id : null		
			bastion_type                                                 = var.bastion.bastion_type
			compartment_ocid                                             = var.bastion.compartment_ocid
			client_cidr_block_allow_list                                 = var.bastion.client_cidr_block_allow_list
			dns_proxy_status                                             = var.bastion.dns_proxy_status
			max_session_ttl_in_seconds                                   = var.bastion.max_session_ttl_in_seconds
			bastion_name                                                 = var.bastion.bastion_name
			subnet_id                                                    = var.bastion.subnet_id
			instance_id                                                  = var.bastion.instance_id
			session_display_name                                         = var.bastion.session_display_name
			session_key_details_public_key_content                       = var.bastion.session_key_details_public_key_content
			session_key_type                                             = var.bastion.session_key_type
			session_session_lifecycle_state                              = var.bastion.session_session_lifecycle_state
			session_session_ttl_in_seconds                               = var.bastion.session_session_ttl_in_seconds
			session_target_resource_details_session_type_managed_ssh     = var.bastion.session_target_resource_details_session_type_managed_ssh
			session_target_resource_details_target_resource_port         = var.bastion.session_target_resource_details_target_resource_port
			target_resource_operating_system_user_name                   = var.bastion.target_resource_operating_system_user_name
			instance_private_ip                                          = var.bastion.instance_private_ip
        }
    }

    pre_existing_output_bastion = length(data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items) > 0 ? {
      	"resource" = {
      	    bastion_id                                                   = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].bastion_id
			bastion_type                                                 = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].bastion_type
            compartment_ocid                                             = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].compartment_id
            client_cidr_block_allow_list                                 = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].dns_proxy_status 
            dns_proxy_status                                             = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].subnet_id
            max_session_ttl_in_seconds                                   = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].max_session_ttl_in_seconds
            bastion_name                                                 = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].bastion_name
            subnet_id                                                    = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].subnet_id
            instance_id                                                  = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].instance_id
            session_display_name                                         = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].session_display_name
            session_key_details_public_key_content                       = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].session_key_details_public_key_content 
            session_key_type                                             = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].session_key_type
            session_session_lifecycle_state                              = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].session_session_lifecycle_state
            session_session_ttl_in_seconds                               = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].session_session_ttl_in_seconds
            session_target_resource_details_session_type_managed_ssh     = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].session_target_resource_details_session_type_managed_ssh
            session_target_resource_details_target_resource_port         = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].session_target_resource_details_target_resource_port
            target_resource_operating_system_user_name                   = data.oci_bastion_bastion.existing_bastion.bastion_collection[0].items[0].target_resource_operating_system_user_name

        }
    } : {}

    output_bastion = merge(oci_bastion_bastion.this, local.pre_existing_output_bastion)
}



