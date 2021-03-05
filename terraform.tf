provider "azurerm" {
  version = ">=2.26"  
  features {}
}

terraform {
    backend "azurerm"{
        resource_group_name = "tstate"
        storage_account_name = "kvongoleterraform"
        container_name ="terraform.tfstate"
    }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "resourcegroup" {
    name = "adotest-rg"
    location = "west us"
}