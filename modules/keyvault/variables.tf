variable "resource_prefix" {
  type = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create service"
}

variable "resource_location" {
    description = "Specifies the supported Azure location where the resource exists."
}

variable "resource_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "keyvault_name" {
  description = "Name of the keyvault instance that stores access keys and connection strings."
}

variable "secret_sql_conn" {
  description = "Connection string to redis server."
  sensitive = true
}

variable "secret_redis_conn" {
  description = "Connection string to redis server."
  sensitive = true
}
