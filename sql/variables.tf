variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Existing Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "create_sql_server" {
  description = "Whether to create Azure SQL Server"
  type        = bool
  default     = true
}

variable "sql_server_name" {
  description = "Azure SQL logical server name"
  type        = string
}

variable "existing_sql_server_id" {
  description = "Existing Azure SQL Server resource ID"
  type        = string
  default     = null
}

variable "sql_server_version" {
  description = "Azure SQL Server version"
  type        = string
  default     = "12.0"
}

variable "administrator_login" {
  description = "SQL administrator login"
  type        = string
}

variable "administrator_login_password" {
  description = "SQL administrator password"
  type        = string
  sensitive   = true
}

variable "azuread_administrator" {
  description = "Optional Microsoft Entra administrator"

  type = object({
    login_username              = string
    object_id                   = string
    tenant_id                   = string
    azuread_authentication_only = optional(bool, false)
  })

  default = null
}

variable "minimum_tls_version" {
  description = "Minimum TLS version"
  type        = string
  default     = "1.2"
}

variable "public_network_access_enabled" {
  description = "Enable SQL public network access"
  type        = bool
  default     = true
}

variable "databases" {
  description = "Azure SQL databases"

  type = map(object({
    sku_name             = string
    max_size_gb          = optional(number)
    collation            = optional(string, "SQL_Latin1_General_CP1_CI_AS")
    zone_redundant       = optional(bool, false)
    storage_account_type = optional(string, "Geo")
    tags                 = optional(map(string), {})
  }))

  default = {}
}

variable "tags" {
  description = "Azure resource tags"
  type        = map(string)

  default = {
    ManagedBy = "terraform"
  }
}
