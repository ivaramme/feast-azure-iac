variable "resource_prefix" {
  type = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create service"
}

variable "resource_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "storage_account_name" {
  description = "Specifies the name of the storage account. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
  type        = string
}

variable "container_name" {
  description = "Specifies the name of the storage container."
  type        = string
  default     = "feast-registry"
}
variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  default     = "LRS"
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid."
  default     = "Standard"
}

variable "resource_location" {
  description = "Specifies the supported Azure location where the resource exists."
}

variable "https_traffic_only" {
  description = "Forces HTTPS only if true."
  default = false
}
