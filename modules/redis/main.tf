resource "azurerm_redis_cache" "online_store" {
  name                = local.cache_instance_name
  location            = var.resource_location
  resource_group_name = var.resource_group_name
  capacity            = var.size
  family              = var.family
  sku_name            = var.sku_name
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = "1.2"

  tags = var.resource_tags
}