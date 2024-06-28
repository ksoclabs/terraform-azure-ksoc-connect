terraform {
  required_version = ">= 1.0.8"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.53.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.54.0"
    }
    ksoc = {
      source  = "ksoclabs/ksoc"
      version = ">= 0.1.0"
    }
  }
}
