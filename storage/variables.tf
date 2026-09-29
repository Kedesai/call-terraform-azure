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

variable "create_storage_account" {
  description = "Whether to create the Storage Account"
  type        = bool
  default     = true
}

variable "storage_account_name" {
  description = "Storage Account name"
  type        = string
}

variable "existing_storage_account_id" {
  description = "Existing Storage Account resource ID"
  type        = string
  default     = null
}

variable "account_kind" {
  description = "Storage Account kind"
  type        = string
  default     = "StorageV2"
}

variable "account_tier" {
  description = "Storage Account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage Account replication type"
  type        = string
  default     = "LRS"
}

variable "access_tier" {
  description = "Storage Account access tier"
  type        = string
  default     = "Hot"
}

variable "https_traffic_only_enabled" {
  description = "Require HTTPS traffic"
  type        = bool
  default     = true
}

variable "min_tls_version" {
  description = "Minimum TLS version"
  type        = string
  default     = "TLS1_2"
}

variable "public_network_access_enabled" {
  description = "Enable public network access"
  type        = bool
  default     = true
}

variable "shared_access_key_enabled" {
  description = "Enable shared access keys"
  type        = bool
  default     = true
}

variable "allow_nested_items_to_be_public" {
  description = "Allow public blob/container access"
  type        = bool
  default     = false
}

variable "containers" {
  description = "Blob containers"

  type = map(object({
    container_access_type = optional(string, "private")
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
