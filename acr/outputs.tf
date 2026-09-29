output "acr_id" {
  description = "Azure Container Registry resource ID"
  value       = module.acr.acr_id
}

output "acr_name" {
  description = "Azure Container Registry name"
  value       = module.acr.acr_name
}

output "login_server" {
  description = "Azure Container Registry login server"
  value       = module.acr.login_server
}

output "resource_group_name" {
  description = "Resource Group containing ACR"
  value       = module.acr.resource_group_name
}
