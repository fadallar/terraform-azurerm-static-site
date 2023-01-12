locals {
  # Naming locals/constants
  name_prefix = lower(var.name_prefix)
  name_suffix = lower(var.name_suffix)

  static_site_name = coalesce(var.custom_name, lower(data.azurecaf_name.static_site.result))
}
