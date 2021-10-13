locals {
  db_instance_name = replace("${lower(("${var.resource_prefix}-${var.db_instance_name}"))}", "/[^a-z0-9]/", "")
}