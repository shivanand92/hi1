terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
  
}
 
provider "azurerm" {
       features {}
 
}

resource "azurerm_resource_group" "shiva" {
  name     = "shiva"
  location = "Central India"
}


resource "azurerm_storage_account" "storage_ac" {
  name                     = "storage100"
  resource_group_name      = "shiva"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
