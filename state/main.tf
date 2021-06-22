provider "azurerm" {
  #version = "2.42.0"
  subscription_id = "c7d3fa00-12fd-4e02-8fff-bbf5e990fa1f" 
  client_id       = "d773f952-630c-4e33-9cec-3afa979e4088"
  client_secret   = "O7Iz5q5NGeSRx5ehJy1-cFUc~lzl8-ELkj"
  tenant_id       = "604f1a96-cbe8-43f8-abbf-f8eaf5d85730"
  features {

  }
}

/*terraform {
backend "azurerm" {}
}*/

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

module "storage" {
  source                 = "git@github.com:Cyberkabil10/azure-terraformm-modules.git//storage"
  resource_group_name    = azurerm_resource_group.resource_group.name
  location               = azurerm_resource_group.resource_group.location
  storage_account_name   = var.storage_account_name
  storage_container_name = var.container_name
}


