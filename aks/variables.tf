variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "create_resource_group" {
  description = "Create the Resource Group"
  type        = bool
  default     = true
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "create_vnet" {
  description = "Create the VNet"
  type        = bool
  default     = true
}

variable "vnet_name" {
  description = "VNet name"
  type        = string
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = []
}

variable "create_subnet" {
  description = "Create the AKS subnet"
  type        = bool
  default     = true
}

variable "subnet_name" {
  description = "AKS subnet name"
  type        = string
  default     = "snet-aks"
}

variable "subnet_address_prefixes" {
  description = "AKS subnet address prefixes"
  type        = list(string)
  default     = []
}

variable "existing_subnet_id" {
  description = "Existing subnet ID when create_subnet is false"
  type        = string
  default     = null
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "dns_prefix" {
  description = "AKS DNS prefix"
  type        = string
}

variable "kubernetes_version" {
  description = "AKS Kubernetes version"
  type        = string
  default     = null
}

variable "private_cluster_enabled" {
  description = "Enable private AKS API"
  type        = bool
  default     = false
}

variable "rbac_enabled" {
  description = "Enable Kubernetes RBAC"
  type        = bool
  default     = true
}

variable "identity_type" {
  description = "AKS managed identity type"
  type        = string
  default     = "SystemAssigned"
}

variable "identity_ids" {
  description = "User-assigned managed identity IDs"
  type        = list(string)
  default     = []
}

variable "network_plugin" {
  description = "AKS network plugin"
  type        = string
  default     = "azure"
}

variable "network_plugin_mode" {
  description = "AKS network plugin mode"
  type        = string
  default     = "overlay"
}

variable "network_policy" {
  description = "AKS network policy"
  type        = string
  default     = "azure"
}

variable "pod_cidr" {
  description = "AKS pod CIDR"
  type        = string
  default     = "10.244.0.0/16"
}

variable "service_cidr" {
  description = "AKS service CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "dns_service_ip" {
  description = "AKS DNS service IP"
  type        = string
  default     = "10.0.0.10"
}

variable "system_node_pool" {
  description = "AKS system node pool"

  type = object({
    name                 = optional(string, "system")
    vm_size              = string
    auto_scaling_enabled = optional(bool, true)
    node_count           = optional(number, 1)
    min_count            = optional(number, 1)
    max_count            = optional(number, 3)
    os_disk_size_gb      = optional(number, 64)
  })
}

variable "additional_node_pools" {
  description = "Additional AKS node pools"

  type = map(object({
    vm_size              = string
    mode                 = optional(string, "User")
    auto_scaling_enabled = optional(bool, true)
    node_count           = optional(number, 1)
    min_count            = optional(number, 1)
    max_count            = optional(number, 3)
    os_disk_size_gb      = optional(number, 64)

    node_labels = optional(map(string), {})
    node_taints = optional(list(string), [])
    tags        = optional(map(string), {})
  }))

  default = {}
}

variable "automatic_upgrade_channel" {
  description = "AKS automatic upgrade channel"
  type        = string
  default     = "patch"
}

variable "node_os_upgrade_channel" {
  description = "AKS node OS upgrade channel"
  type        = string
  default     = "NodeImage"
}

variable "tags" {
  description = "Azure resource tags"
  type        = map(string)
  default     = {}
}
