locals {
  resource_tags = merge({
    environment = terraform.workspace
  }, var.resource_tags)
  environment_prefix = substr(terraform.workspace, 0, 3)
}