variable "insights_name" {
  description = "Specifies the name of the application insights."
  type        = string
}

variable "resource_location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create service"
  type        = string
}

variable "resource_tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}