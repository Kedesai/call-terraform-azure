provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "key_vault" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//key-vault?ref=main"

  create_resource_group = false

  resource_group_name = var.resource_group_name
  location            = var.location

  create_key_vault      = var.create_key_vault
  key_vault_name        = var.key_vault_name
  existing_key_vault_id = var.existing_key_vault_id

  tenant_id = var.tenant_id
  sku_name  = var.sku_name

  rbac_authorization_enabled = var.rbac_authorization_enabled
  role_assignments           = var.role_assignments

  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled   = var.purge_protection_enabled

  public_network_access_enabled = var.public_network_access_enabled

  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment

  tags = var.tags
}
