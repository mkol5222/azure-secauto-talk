terraform {
  backend "azurerm" {
    resource_group_name  = "cp-talk-2020-tfstate"
    storage_account_name = "tfstate30194"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "< 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}