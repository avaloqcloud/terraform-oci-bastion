# Data lookups of existing resources
## Bastion service
data "oci_bastion_bastion" "existing_bastion" {
    #Required
    bastion_id = var.bastion.id      # var.oci_core_instance.test_instance.id
}
  # Filter - Important; Filter should be so that only ever one gets returned.
  filter {
    name   = "bastion_name"
    values = ["${var.bastion.bastion_name}"]
  }
