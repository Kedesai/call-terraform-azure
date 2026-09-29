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

variable "create_identity" {
  description = "Whether to create the User Assigned Managed Identity"
  type        = bool
  default     = true
}

variable "identity_name" {
  description = "Managed Identity name"
  type        = string
}

variable "existing_identity_id" {
  description = "Existing Managed Identity resource ID"
  type        = string
  default     = null
}

variable "role_assignments" {
  description = "Azure RBAC assignments"

  type = map(object({
    scope                = string
    role_definition_name = string
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
