resource "azurerm_application_insights" "observability" {
  name                = var.insights_name
  location            = var.resource_location
  resource_group_name = var.resource_group_name
  application_type    = "web"
  tags                = var.resource_tags
}