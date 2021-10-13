variable "resource_prefix" {
    type = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create service"
}

variable "resource_location" {
    description = "Specifies the supported Azure location where the resource exists."
}

variable "server_name" {
  description = "The name of the SQL Server instance name."
}

variable "server_admin_user" {
    description = "The admin username for accessing this database"
    sensitive   = true
}

variable "server_admin_password" {
    description = "The admin password for accessing this database"
    sensitive   = true
}

variable "server_version" {
    description = "The SQL Server version."
    default = "12.0"
}

variable "public_network_access_enabled" {
    description = "Whether public network access is allowed for this server. "
    default = true
}

variable "server_fw_start_ip" {
    description = "The starting IP address to allow through the firewall for this rule."
    default = "0.0.0.0"
}

variable "server_fw_end_ip" {
    description = "The ending IP address to allow through the firewall for this rule."
    default = "0.0.0.0"
}

variable "db_compute_model" {
    description = "value"
    default = "Serverless"
}

variable "db_instance_name" {
    description = "value"
}

variable "db_family" {
    description = "value"
    default = "Gen5"
}

variable "db_max_size" {
    description = "The max size of the database in gigabytes."
    default = 2
}

variable "db_sku_name" {
    description = "Specifies the name of the SKU used by the database."
    default = "Basic"
}

variable "db_read_scale" {
    description = "If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica."
    default = false
}

variable "db_zone_redundant" {
    description = "Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones."
    default = false
}

variable "resource_tags" {
    description = "A map of tags to add to all resources"
    type        = map(string)
}