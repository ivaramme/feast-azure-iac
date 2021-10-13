variable "resource_prefix" {
  type        = string
  description = "Specify a prefix for all resources in the environment."
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create service"
}

variable "resource_location" {
  description = "Specifies the supported Azure location where the resource exists."
  default     = "South East Asia"
}

variable "resource_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "cache_instance_name" {
  description = "Cache instance name."
  type        = string
}

variable "offline_server_name" {
  description = "Offline database server name."
  type        = string
}

variable "offline_server_admin_user" {
  description = "Offline database server username."
  type        = string
  sensitive   = true
}

variable "offline_server_admin_pwd" {
  description = "Offline database server password."
  type        = string
  sensitive   = true
}

variable "offline_db_instance_name" {
  description = "Offline database instance name."
  type        = string
}

variable "storage_account_name" {
  description = "Storage Account name."
  type        = string
}

variable "container_name" {
  description = "Container name."
  type        = string
}

variable "keyvault_name" {
  description = "Name of the keyvault instance that stores access keys and connection strings."
  default     = "feastkv"
}