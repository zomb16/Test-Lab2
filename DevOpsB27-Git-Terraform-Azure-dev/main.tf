# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.16.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "DevOpsB27"
    storage_account_name = "devopsb27terraformprod"
    container_name       = "tfstate"
    key                  = "devopsb27-git-class.tfstate"
    # access_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
#   subscription_id = "aaaaaaaaaaa"
#   client_id       = "bbbbbbbbbbb"
#   client_secret   = "ccccccccccc"
#   tenant_id       = "ddddddddddd"
  features {}
}