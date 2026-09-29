output "vm_id" {
  description = "Linux VM resource ID"
  value       = module.vm.vm_id
}

output "vm_name" {
  description = "Linux VM name"
  value       = module.vm.vm_name
}

output "network_interface_id" {
  description = "VM Network Interface resource ID"
  value       = module.vm.network_interface_id
}

output "private_ip_address" {
  description = "VM private IP address"
  value       = module.vm.private_ip_address
}

output "identity" {
  description = "VM managed identity"
  value       = module.vm.identity
}

output "data_disk_ids" {
  description = "Managed Data Disk IDs"
  value       = module.vm.data_disk_ids
}
