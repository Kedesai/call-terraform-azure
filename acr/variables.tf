variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Existing Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "create_acr" {
  description = "Whether to create the Azure Container Registry"
  type        = bool
  default     = true
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

variable "existing_acr_id" {
  description = "Existing Azure Container Registry resource ID"
  type        = string
  default     = null
}

variable "sku" {
  description = "Azure Container Registry SKU"
  type        = string
  default     = "Standard"
}

variable "admin_enabled" {
  description = "Enable the ACR admin account"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Enable public network access to ACR"
  type        = bool
  default     = true
}

variable "identity_type" {
  description = "Managed identity type for ACR"
  type        = string
  default     = null
}

variable "identity_ids" {
  description = "User Assigned Managed Identity IDs"
  type        = list(string)
  default     = []
}

variable "role_assignments" {
  description = "Azure RBAC assignments scoped to ACR"

  type = map(object({
    principal_id                     = string
    role_definition_name             = string
    skip_service_principal_aad_check = optional(bool, false)
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
