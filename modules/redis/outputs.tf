output "primary_connection_string" {
  value     = azurerm_redis_cache.online_store.primary_connection_string
  sensitive = true
}

output "secondary_connection_string" {
  value     = azurerm_redis_cache.online_store.secondary_connection_string
  sensitive = true
}

output "primary_access_key" {
  value     = azurerm_redis_cache.online_store.primary_access_key
  sensitive = true
}

output "secondary_access_key" {
  value     = azurerm_redis_cache.online_store.secondary_access_key
  sensitive = true
}

output "redis_cache_id" { 
  value     = azurerm_redis_cache.online_store.id
}