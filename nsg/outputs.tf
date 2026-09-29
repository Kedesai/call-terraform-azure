output "nsg_id" {
  description = "Existing Network Security Group resource ID"
  value       = module.nsg.nsg_id
}

output "nsg_name" {
  description = "Existing Network Security Group name"
  value       = module.nsg.nsg_name
}

output "resource_group_name" {
  description = "Resource Group containing the NSG"
  value       = module.nsg.resource_group_name
}
