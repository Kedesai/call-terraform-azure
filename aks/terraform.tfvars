subscription_id = "4df99181-bc18-4afb-8f07-c457cebbf323"

# Resource Group
create_resource_group = true

resource_group_name = "rg-ketan-aks-dev"
location            = "eastus2"

# VNet
create_vnet = true

vnet_name = "vnet-ketan-aks-dev"

vnet_address_space = [
  "10.50.0.0/16"
]

# Subnet
create_subnet = true
subnet_name   = "snet-aks"

subnet_address_prefixes = [
  "10.50.1.0/24"
]

# AKS
cluster_name = "ketan-aks-dev"
dns_prefix   = "ketan-aks-dev"

# Let Azure select the supported default initially.
kubernetes_version = null

private_cluster_enabled = false

rbac_enabled = true

# AKS Identity
identity_type = "SystemAssigned"
identity_ids  = []

# Azure CNI Overlay
network_plugin      = "azure"
network_plugin_mode = "overlay"
network_policy      = "azure"

pod_cidr       = "10.244.0.0/16"
service_cidr   = "10.0.0.0/16"
dns_service_ip = "10.0.0.10"

# System Node Pool
system_node_pool = {
  name                 = "system"
  vm_size              = "Standard_D2s_v5"
  auto_scaling_enabled = true
  min_count            = 1
  max_count            = 2
  os_disk_size_gb      = 64
}

# No additional node pools initially
additional_node_pools = {}

automatic_upgrade_channel = "patch"
node_os_upgrade_channel   = "NodeImage"

tags = {
  Environment = "dev"
  Application = "aks-poc"
  ManagedBy   = "terraform"
  Owner       = "ketan"
}
