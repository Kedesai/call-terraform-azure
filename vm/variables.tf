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

variable "vm_name" {
  description = "Linux VM name"
  type        = string
}

variable "vm_size" {
  description = "VM instance size"
  type        = string
  default     = "Standard_D2s_v5"
}

variable "zone" {
  description = "Availability Zone"
  type        = string
  default     = null
}

variable "admin_username" {
  description = "Linux administrator username"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}

variable "subnet_id" {
  description = "Existing subnet resource ID"
  type        = string
}

variable "network_security_group_id" {
  description = "Optional NSG resource ID"
  type        = string
  default     = null
}

variable "private_ip_address_allocation" {
  description = "Private IP allocation method"
  type        = string
  default     = "Dynamic"
}

variable "private_ip_address" {
  description = "Static private IP address"
  type        = string
  default     = null
}

variable "accelerated_networking_enabled" {
  description = "Enable accelerated networking"
  type        = bool
  default     = false
}

variable "identity_type" {
  description = "Managed identity type"
  type        = string
  default     = "SystemAssigned"
}

variable "identity_ids" {
  description = "User Assigned Managed Identity IDs"
  type        = list(string)
  default     = []
}

variable "source_image" {
  description = "VM source image"

  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })

  default = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

variable "os_disk_type" {
  description = "OS disk type"
  type        = string
  default     = "Premium_LRS"
}

variable "os_disk_size_gb" {
  description = "OS disk size"
  type        = number
  default     = 64
}

variable "os_disk_caching" {
  description = "OS disk caching"
  type        = string
  default     = "ReadWrite"
}

variable "data_disks" {
  description = "Additional data disks"

  type = map(object({
    disk_size_gb         = number
    lun                  = number
    storage_account_type = optional(string, "Premium_LRS")
    caching              = optional(string, "ReadWrite")
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
