output "resource_group_name" {
  description = "Existing Resource Group"
  value       = module.vnet.resource_group_name
}

output "location" {
  description = "Azure region"
  value       = module.vnet.location
}

output "vnet_id" {
  description = "Existing VNet resource ID"
  value       = module.vnet.vnet_id
}

output "vnet_name" {
  description = "Existing VNet name"
  value       = module.vnet.vnet_name
}

output "subnet_ids" {
  description = "Existing subnet resource IDs"
  value       = module.vnet.subnet_ids
}

output "aks_subnet_id" {
  description = "Subnet ID intended for AKS"
  value       = module.vnet.subnet_ids["aks"]
}
