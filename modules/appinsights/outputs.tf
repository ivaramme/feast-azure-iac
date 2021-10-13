output "insights_id" {
  value = azurerm_application_insights.observability.id
}

output "instrumentation_key" {
  value = azurerm_application_insights.observability.instrumentation_key
}