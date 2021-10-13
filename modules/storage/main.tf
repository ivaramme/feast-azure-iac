resource "azurerm_storage_account" "storage" {
  name                     = local.storage_account_name
  location                 = var.resource_location
  resource_group_name      = var.resource_group_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = "StorageV2"
  enable_https_traffic_only = var.https_traffic_only

  tags = var.resource_tags
}

resource "azurerm_storage_container" "container" {
  name                 = var.container_name
  storage_account_name = azurerm_storage_account.storage.name
}

data "azurerm_client_config" "storage_account" {
}

resource "azurerm_role_assignment" "storage_account" {
  scope                = azurerm_storage_account.storage.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azurerm_client_config.storage_account.object_id
}