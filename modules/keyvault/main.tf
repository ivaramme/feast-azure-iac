data "azurerm_client_config" "current" {
}

resource "azurerm_key_vault" "keyvault" {
  name                        = local.keyvault_name
  location                    = var.resource_location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get", "Set", "List"
    ]
  }
}

resource "azurerm_key_vault_secret" "secret_sql_conn" {
  name         = "FEAST-SQL-CONN"
  value        = var.secret_sql_conn
  key_vault_id = azurerm_key_vault.keyvault.id
}

resource "azurerm_key_vault_secret" "secret_redis_conn" {
  name         = "FEAST-REDIS-CONN"
  value        = var.secret_redis_conn
  key_vault_id = azurerm_key_vault.keyvault.id
}
