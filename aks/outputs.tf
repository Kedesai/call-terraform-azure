output "resource_group_name" {
  description = "AKS Resource Group"
  value       = module.aks.resource_group_name
}

output "resource_group_location" {
  description = "AKS location"
  value       = module.aks.resource_group_location
}

output "vnet_name" {
  description = "AKS VNet"
  value       = module.aks.vnet_name
}

output "subnet_id" {
  description = "AKS subnet ID"
  value       = module.aks.subnet_id
}

output "cluster_id" {
  description = "AKS cluster ID"
  value       = module.aks.cluster_id
}

output "cluster_name" {
  description = "AKS cluster name"
  value       = module.aks.cluster_name
}

output "cluster_fqdn" {
  description = "AKS API FQDN"
  value       = module.aks.cluster_fqdn
}

output "cluster_private_fqdn" {
  description = "AKS private API FQDN"
  value       = module.aks.cluster_private_fqdn
}

output "node_resource_group" {
  description = "AKS-managed node Resource Group"
  value       = module.aks.node_resource_group
}
