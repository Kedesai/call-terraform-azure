provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "managed_identity" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//managed-identity?ref=main"

  create_resource_group = false

  resource_group_name = var.resource_group_name
  location            = var.location

  create_identity      = var.create_identity
  identity_name        = var.identity_name
  existing_identity_id = var.existing_identity_id

  role_assignments = var.role_assignments

  tags = var.tags
}
