output "sql_server_id" {
  description = "Azure SQL Server resource ID"
  value       = module.sql.sql_server_id
}

output "sql_server_name" {
  description = "Azure SQL Server name"
  value       = module.sql.sql_server_name
}

output "sql_server_fqdn" {
  description = "Azure SQL Server FQDN"
  value       = module.sql.sql_server_fqdn
}

output "database_ids" {
  description = "Azure SQL Database resource IDs"
  value       = module.sql.database_ids
}

output "database_names" {
  description = "Azure SQL Database names"
  value       = module.sql.database_names
}
