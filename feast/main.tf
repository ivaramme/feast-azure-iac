terraform {
  # required_providers {
  #   azurerm = {
  #     source = "hashicorp/azurerm"
  #     version = "2.80.0"
  #   }
  # }
}

provider "azurerm" {
  # Configuration options
  version = "=2.80.0"
  features {
    
  }
}

data "azurerm_subscription" "current" {
}

resource "azurerm_resource_group" "group" {
  name                = "${var.resource_prefix}_${var.resource_group_name}_rg"
  location            = var.resource_location
  tags                = var.resource_tags
}

module "module_redis" {
  source                = "../modules/redis"
  resource_prefix       = var.resource_prefix
  resource_group_name   = azurerm_resource_group.group.name
  resource_location     = azurerm_resource_group.group.location

  cache_instance_name   = var.cache_instance_name
  
  resource_tags         = var.resource_tags

  depends_on             = [azurerm_resource_group.group]
}

module "module_sql" {
  source                = "../modules/sql"
  resource_prefix       = var.resource_prefix
  resource_group_name   = azurerm_resource_group.group.name
  resource_location     = azurerm_resource_group.group.location

  server_name           = var.offline_server_name
  server_admin_user     = var.offline_server_admin_user
  server_admin_password = var.offline_server_admin_pwd
  db_instance_name      = var.offline_db_instance_name

  resource_tags         = var.resource_tags

  depends_on             = [azurerm_resource_group.group]  
}

module "module_storage" {
  source                = "../modules/storage"
  resource_prefix       = var.resource_prefix
  resource_group_name   = azurerm_resource_group.group.name
  resource_location     = azurerm_resource_group.group.location

  storage_account_name  = var.storage_account_name
  container_name        = var.container_name

  resource_tags         = var.resource_tags
  
  depends_on            = [azurerm_resource_group.group]
}

module "module_keyvault" {
  source                = "../modules/keyvault"
  resource_prefix       = var.resource_prefix
  resource_group_name   = azurerm_resource_group.group.name
  resource_location     = azurerm_resource_group.group.location

  keyvault_name         = var.keyvault_name
  secret_sql_conn       = module.module_sql.sql_conn_string
  secret_redis_conn     = module.module_redis.primary_connection_string

  resource_tags         = var.resource_tags

  depends_on            = [module.module_sql, module.module_redis]
}