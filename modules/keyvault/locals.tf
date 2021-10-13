locals {
  keyvault_name     = replace("${lower(("${var.resource_prefix}-${var.keyvault_name}"))}", "/[^a-z0-9]/", "")  
}