output "identity_id" {
  description = "Managed Identity resource ID"
  value       = module.managed_identity.identity_id
}

output "identity_name" {
  description = "Managed Identity name"
  value       = module.managed_identity.identity_name
}

output "client_id" {
  description = "Managed Identity client ID"
  value       = module.managed_identity.client_id
}

output "principal_id" {
  description = "Managed Identity principal ID"
  value       = module.managed_identity.principal_id
}
