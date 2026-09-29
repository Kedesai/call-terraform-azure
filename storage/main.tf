provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "storage" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//storage?ref=main"

  create_resource_group = false

  resource_group_name = var.resource_group_name
  location            = var.location

  create_storage_account      = var.create_storage_account
  storage_account_name        = var.storage_account_name
  existing_storage_account_id = var.existing_storage_account_id

  account_kind             = var.account_kind
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier

  https_traffic_only_enabled = var.https_traffic_only_enabled
  min_tls_version            = var.min_tls_version

  public_network_access_enabled   = var.public_network_access_enabled
  shared_access_key_enabled       = var.shared_access_key_enabled
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public

  containers = var.containers

  tags = var.tags
}
