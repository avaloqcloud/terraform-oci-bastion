/* terraform {
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
} */

provider "oci" {
  auth = "APIKey"
  tenancy_ocid         = var.tenancy_ocid
  user_ocid            = var.user_ocid
  fingerprint          = var.fingerprint_id
  private_key_path     = var.private_key_path
  region               = var.region
}
