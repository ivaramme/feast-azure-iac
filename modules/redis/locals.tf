locals {
  cache_instance_name = replace("${lower(("${var.resource_prefix}-${var.cache_instance_name}"))}", "/[^a-z0-9]/", "")
}