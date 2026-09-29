provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "sql" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//sql?ref=main"

  create_resource_group = false

  resource_group_name = var.resource_group_name
  location            = var.location

  create_sql_server      = var.create_sql_server
  sql_server_name        = var.sql_server_name
  existing_sql_server_id = var.existing_sql_server_id

  sql_server_version = var.sql_server_version

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  azuread_administrator = var.azuread_administrator

  minimum_tls_version           = var.minimum_tls_version
  public_network_access_enabled = var.public_network_access_enabled

  databases = var.databases

  tags = var.tags
}
