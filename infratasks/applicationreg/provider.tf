# ---------------------------
# providers.tf
# ---------------------------

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3c9fdae9-a76a-479f-9b7c-30bb0930ea90"
}

provider "azuread" {
}

