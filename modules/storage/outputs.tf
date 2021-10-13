
output "sa_blob_endpoint" {
  value = azurerm_storage_account.storage.primary_blob_endpoint
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "container_name" {
  value = azurerm_storage_container.container.name
}

output "storage_account_id" {
  value = azurerm_storage_account.storage.id
}