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
    storage_account_name = "tauseeftfstate007"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "8b70ac04-5701-4f53-8bcc-09715d9ed688"
}