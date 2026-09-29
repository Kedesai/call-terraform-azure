output "key_vault_id" {
  description = "Key Vault resource ID"
  value       = module.key_vault.key_vault_id
}

output "key_vault_name" {
  description = "Key Vault name"
  value       = module.key_vault.key_vault_name
}

output "vault_uri" {
  description = "Key Vault URI"
  value       = module.key_vault.vault_uri
}
