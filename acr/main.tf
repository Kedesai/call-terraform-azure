provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "acr" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//acr?ref=main"

  create_resource_group = false

  resource_group_name = var.resource_group_name
  location            = var.location

  create_acr      = var.create_acr
  acr_name        = var.acr_name
  existing_acr_id = var.existing_acr_id

  sku = var.sku

  admin_enabled                 = var.admin_enabled
  public_network_access_enabled = var.public_network_access_enabled

  identity_type = var.identity_type
  identity_ids  = var.identity_ids

  role_assignments = var.role_assignments

  tags = var.tags
}
