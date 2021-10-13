variable "resource_prefix" {
    type = string
}

variable "resource_group_name" {
    description = "The name of the resource group in which to create service"
}

variable "resource_location" {
    description = "Specifies the supported Azure location where the resource exists."
}

variable "cache_instance_name" {
    description = "Name of the cache instance."
}

variable "sku_name" {
    description = "SKU for this instance."
    default = "Basic"
}

variable "family" {
    description = "The SKU family/pricing group to use"
    default = "C"
}

variable "size" {
    description = "The size of the Redis cache to deploy."
    default = 2
}

variable "enable_non_ssl_port" {
    description = "Enable the non-SSL port (6379)"
    default = true
}

variable "resource_tags" {
    description = "A map of tags to add to all resources"
    type        = map(string)
}