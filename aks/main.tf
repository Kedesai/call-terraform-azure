provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

module "aks" {
  source = "git::https://github.com/Kedesai/terraform-azure.git//aks?ref=main"

  # Resource Group
  create_resource_group = var.create_resource_group
  resource_group_name   = var.resource_group_name
  location              = var.location

  # Virtual Network
  create_vnet        = var.create_vnet
  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space

  # Subnet
  create_subnet           = var.create_subnet
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  existing_subnet_id      = var.existing_subnet_id

  # AKS
  cluster_name       = var.cluster_name
  dns_prefix         = var.dns_prefix
  kubernetes_version = var.kubernetes_version

  private_cluster_enabled = var.private_cluster_enabled
  rbac_enabled            = var.rbac_enabled

  # Identity
  identity_type = var.identity_type
  identity_ids  = var.identity_ids

  # Networking
  network_plugin      = var.network_plugin
  network_plugin_mode = var.network_plugin_mode
  network_policy      = var.network_policy

  pod_cidr       = var.pod_cidr
  service_cidr   = var.service_cidr
  dns_service_ip = var.dns_service_ip

  # Nodes
  system_node_pool      = var.system_node_pool
  additional_node_pools = var.additional_node_pools

  # Upgrades
  automatic_upgrade_channel = var.automatic_upgrade_channel
  node_os_upgrade_channel   = var.node_os_upgrade_channel

  tags = var.tags
}
