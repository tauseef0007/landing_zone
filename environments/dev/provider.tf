terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.60"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-prod"
    storage_account_name = "tauseeftfstate001"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "8fc57fc2-9cc4-4bcb-8c0f-315512d0cba3"
}