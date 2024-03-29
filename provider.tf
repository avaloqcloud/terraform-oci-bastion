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
