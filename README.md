## OCI Bastion Service

The code provides a reusuable Terraform module that provisions a bastion service and SSH managed bastion session on Oracle Cloud Infrastructure.   

## Table of contents

* [Usage](#usage)
* [Providers](#providers)
* [Requirements](#requirements)
* [Resources](#resources)
* [Inputs](#inputs)
  

## Usage
 
    module "terraform-oci-compute" {
        source = "github.com/avaloqcloud/terraform-oci-bastion"
    }


## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 5.18.0 |


### File `provider.tf` content example:

```hcl
terraform {
  required_version = "~> 1.2"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.39"
    }
    oci = {
      source  = "oracle/oci"
      version = "5.18.0"
    }
  }
}
```


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.39 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.18.0 |


## Resources

| Name | Type |
|------|------|
| [oci_bastion_bastion.bastion](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs/resources/bastion_bastion) | resource |
| [oci_bastion_session.test_session_managed_ssh](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs/resources/bastion_session) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bastion_name"></a> [bastion\_name](#input\_bastion\_name) | n/a | `string` | n/a | yes |
| <a name="input_bastion_type"></a> [bastion\_type](#input\_bastion\_type) | n/a | `string` | n/a | yes |
| <a name="input_client_cidr_block_allow_list"></a> [client\_cidr\_block\_allow\_list](#input\_client\_cidr\_block\_allow\_list) | A list of address ranges in CIDR notation that you want to allow to connect to sessions hosted by this bastion | `any` | n/a | yes |
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | n/a | `string` | n/a | yes |
| <a name="input_dns_proxy_status"></a> [dns\_proxy\_status](#input\_dns\_proxy\_status) | n/a | `any` | n/a | yes |
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | n/a | `any` | n/a | yes |
| <a name="input_instance_private_ip"></a> [instance\_private\_ip](#input\_instance\_private\_ip) | n/a | `any` | n/a | yes |
| <a name="input_max_session_ttl_in_seconds"></a> [max\_session\_ttl\_in\_seconds](#input\_max\_session\_ttl\_in\_seconds) | n/a | `any` | n/a | yes |
| <a name="input_session_display_name"></a> [session\_display\_name](#input\_session\_display\_name) | n/a | `string` | `"bastionSession"` | no |
| <a name="input_session_key_details_public_key_content"></a> [session\_key\_details\_public\_key\_content](#input\_session\_key\_details\_public\_key\_content) | n/a | `any` | n/a | yes |
| <a name="input_session_key_type"></a> [session\_key\_type](#input\_session\_key\_type) | n/a | `string` | `"PUB"` | no |
| <a name="input_session_session_lifecycle_state"></a> [session\_session\_lifecycle\_state](#input\_session\_session\_lifecycle\_state) | n/a | `string` | `"ACTIVE"` | no |
| <a name="input_session_session_ttl_in_seconds"></a> [session\_session\_ttl\_in\_seconds](#input\_session\_session\_ttl\_in\_seconds) | n/a | `number` | `1800` | no |
| <a name="input_session_target_resource_details_session_type_managed_ssh"></a> [session\_target\_resource\_details\_session\_type\_managed\_ssh](#input\_session\_target\_resource\_details\_session\_type\_managed\_ssh) | n/a | `string` | `"MANAGED_SSH"` | no |
| <a name="input_session_target_resource_details_target_resource_port"></a> [session\_target\_resource\_details\_target\_resource\_port](#input\_session\_target\_resource\_details\_target\_resource\_port) | n/a | `number` | `22` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `any` | n/a | yes |
| <a name="input_target_resource_operating_system_user_name"></a> [target\_resource\_operating\_system\_user\_name](#input\_target\_resource\_operating\_system\_user\_name) | n/a | `string` | `"opc"` | no |
