output "sql_server_qdn" {
  value     = module.module_sql.sql_server_qdn 
}

output "sql_db_id" {
  value = module.module_sql.sql_db_id
}

output "sql_db_name" {
  value     = module.module_sql.sql_db_name
}

output "cache_primary_connection_string" {
  value     = module.module_redis.primary_connection_string
  sensitive = true
}

output "cache_secondary_connection_string" {
  value     = module.module_redis.secondary_connection_string
  sensitive = true
}

output "cache_primary_access_key" {
  value     = module.module_redis.primary_access_key
  sensitive = true
}

output "cache_secondary_access_key" {
  value     = module.module_redis.secondary_access_key
  sensitive = true
}

output "storage_blob_endpoint" {
  value     = module.module_storage.sa_blob_endpoint
}

output "storage_container_name" {
  value     = module.module_storage.container_name
}

output "keyvault_id" {
  value     = module.module_keyvault.keyvault_id
}