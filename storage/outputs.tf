output "storage_account_id" {
  description = "Storage Account resource ID"
  value       = module.storage.storage_account_id
}

output "storage_account_name" {
  description = "Storage Account name"
  value       = module.storage.storage_account_name
}

output "primary_blob_endpoint" {
  description = "Primary Blob endpoint"
  value       = module.storage.primary_blob_endpoint
}

output "container_ids" {
  description = "Storage Container IDs"
  value       = module.storage.container_ids
}
