variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "client_name" {
  description = "Client name/account used in naming"
  type        = string
}

variable "environment" {
  description = "Project environment"
  type        = string
}

variable "stack" {
  description = "Project stack name"
  type        = string
}

variable sku_tier {
    description = "Specifies the SKU tier of the Static Web App. Possible values are Free or Standard"
    type = string
    default = "Standard"

}

variable sku_size {
    description = " Specifies the SKU size of the Static Web App. Possible values are Free or Standard"
    type = string
    default = "Standard"

}

variable identity_type {
    description = "The Type of Managed Identity assigned to this Static Site resource. Possible values are SystemAssigned, UserAssigned and SystemAssigned, UserAssigned"
    type = string
    default = null
}

variable identity_ids {
    description = "A list of Managed Identity IDs which should be assigned to this Static Site resource"
    type = list
    default = null
}