locals {
  storage_account_name = replace("${lower(("${var.resource_prefix}-${var.storage_account_name}"))}", "/[^a-z0-9]/", "")
}