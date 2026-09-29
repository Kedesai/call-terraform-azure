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

variable "nsg_name" {
  description = "Existing Network Security Group name"
  type        = string
}

variable "existing_nsg_id" {
  description = "Existing Network Security Group resource ID"
  type        = string
}

variable "subnet_id" {
  description = "Existing subnet resource ID"
  type        = string
}
