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

variable "create_key_vault" {
  description = "Whether to create the Key Vault"
  type        = bool
  default     = true
}

variable "key_vault_name" {
  description = "Key Vault name"
  type        = string
}

variable "existing_key_vault_id" {
  description = "Existing Key Vault resource ID"
  type        = string
  default     = null
}

variable "tenant_id" {
  description = "Microsoft Entra tenant ID"
  type        = string
}

variable "sku_name" {
  description = "Key Vault SKU"
  type        = string
  default     = "standard"
}

variable "rbac_authorization_enabled" {
  description = "Use Azure RBAC for Key Vault authorization"
  type        = bool
  default     = true
}

variable "role_assignments" {
  description = "Azure RBAC assignments scoped to Key Vault"

  type = map(object({
    principal_id                     = string
    role_definition_name             = string
    skip_service_principal_aad_check = optional(bool, false)
  }))

  default = {}
}

variable "soft_delete_retention_days" {
  description = "Soft delete retention period"
  type        = number
  default     = 90
}

variable "purge_protection_enabled" {
  description = "Enable Key Vault purge protection"
  type        = bool
  default     = true
}

variable "public_network_access_enabled" {
  description = "Enable public network access"
  type        = bool
  default     = true
}

variable "enabled_for_deployment" {
  description = "Allow Azure VM deployment access"
  type        = bool
  default     = false
}

variable "enabled_for_disk_encryption" {
  description = "Allow Azure Disk Encryption access"
  type        = bool
  default     = false
}

variable "enabled_for_template_deployment" {
  description = "Allow ARM template deployment access"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Azure resource tags"
  type        = map(string)

  default = {
    ManagedBy = "terraform"
  }
}
