data "azurecaf_name" "static_site" {
  name          = var.stack
  resource_type = "azurerm_static_site"
  prefixes      = var.name_prefix == "" ? null : [local.name_prefix]
  suffixes      = compact([var.client_name, var.location_short, var.environment, local.name_suffix, var.use_caf_naming ? "" : "stapp"])
  use_slug      = var.use_caf_naming
  clean_input   = true
  separator     = "-"
}

resource "random_string" "random" {
  length  = 3
  special = false
  upper   = false
  numeric = true
}