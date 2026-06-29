terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0.0"
    }
  }
  required_version = ">= 1.0.0"

}
provider "azurerm" {
  features {}
  subscription_id = "3c9fdae9-a76a-479f-9b7c-30bb0930ea90"
}