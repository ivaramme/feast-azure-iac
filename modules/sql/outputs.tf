output "sql_server_id" { 
  value     = azurerm_mssql_server.server.id
}

output "sql_server_qdn" {
  value     = azurerm_mssql_server.server.fully_qualified_domain_name
}

output "sql_db_id" {
  value     = azurerm_mssql_database.offline_store.id
}

output "sql_db_name" {
  value     = azurerm_mssql_database.offline_store.name
}

output "sql_admin_username" {
  value     = azurerm_mssql_server.server.administrator_login
  sensitive = true
}

output "sql_admin_password" {
  value     = azurerm_mssql_server.server.administrator_login_password
  sensitive = true
}

output "sql_conn_string" {
  value     = "mssql+pyodbc://${azurerm_mssql_server.server.administrator_login}:${azurerm_mssql_server.server.administrator_login_password}@${azurerm_mssql_server.server.fully_qualified_domain_name}:1433/${azurerm_mssql_database.offline_store.name}?driver=ODBC+Driver+17+for+SQL+Server&autocommit=True"
  sensitive = true
}
