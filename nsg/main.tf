provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "nsg" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//nsg?ref=main"

  create_resource_group = false
  create_nsg            = false
  associate_subnet      = false

  resource_group_name = var.resource_group_name
  location            = var.location

  nsg_name        = var.nsg_name
  existing_nsg_id = var.existing_nsg_id

  subnet_id = var.subnet_id
}
