provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "vnet" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//vnet?ref=main"

  create_resource_group = false
  create_vnet           = false

  resource_group_name = var.resource_group_name
  location            = var.location

  vnet_name        = var.vnet_name
  existing_vnet_id = var.existing_vnet_id

  existing_subnet_ids = var.existing_subnet_ids

  tags = var.tags
}
