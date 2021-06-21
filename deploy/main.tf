provider "azurerm" {
  subscription_id = "c7d3fa00-12fd-4e02-8fff-bbf5e990fa1f"
  client_id       = "d773f952-630c-4e33-9cec-3afa979e4088"
  client_secret   = "O7Iz5q5NGeSRx5ehJy1-cFUc~lzl8-ELkj"
  tenant_id       = "604f1a96-cbe8-43f8-abbf-f8eaf5d85730"
  features {
    
  }
}
 

terraform {
  backend "azurerm" {}
}

/*data "terraform_remote_state" "init" {
  backend = "remote"
  config = {
    storage_account_name = "${var.storage_account_name}"
    container_name = "${var.container_name}"
    key = "${var.key}"
    access_key = "${var.access_key}"
    #resource_group_name = "${var.resource_group_name}"
    #resouce_group_location = "${var.resource_group_location}"
  }
}*/
module "container" {
  source = "git@github.com:Cyberkabil10/azure-terraformm-modules.git//container-registry"
  registry_name = "${var.registry_name}"
  resource_group_name = "${var.resource_group_name}"
  resouce_group_location = "${var.resource_group_location}"
}

module "kubernetes" {
  source = "git@github.com:Cyberkabil10/azure-terraformm-modules.git//kubernetes"
  resource_group_name = "${var.resource_group_name}"
  resouce_group_location = "${var.resource_group_location}"
  kubernetes_cluster_name = "${var.kubernetes_cluster_name}"
  dns_prefix = "${var.dns_prefix}"
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  retention_in_days = 30
  analytics_sku = "PerGB2018"
}