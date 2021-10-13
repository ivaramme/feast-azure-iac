resource "azurerm_mssql_server" "server" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.resource_location
  version                      = var.server_version
  administrator_login          = var.server_admin_user
  administrator_login_password = var.server_admin_password
  minimum_tls_version          = "1.2"
  public_network_access_enabled = var.public_network_access_enabled

  tags = var.resource_tags
}

resource "azurerm_mssql_firewall_rule" "example" {
  name                = "FirewallRule1"
  server_id           = azurerm_mssql_server.server.id
  start_ip_address    = var.server_fw_start_ip
  end_ip_address      = var.server_fw_end_ip
}

resource "azurerm_mssql_database" "offline_store" {
  name           = local.db_instance_name
  server_id      = azurerm_mssql_server.server.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = var.db_max_size
  read_scale     = var.db_read_scale
  sku_name       = var.db_sku_name
  zone_redundant = var.db_zone_redundant

  tags = var.resource_tags
}
