locals {
  # Naming locals/constants
  name_prefix = lower(var.name_prefix)
  name_suffix = lower(var.name_suffix)

  #static_site_name = coalesce(var.static_site_custom_name, lower(data.azurecaf_name.static_site.result))

  service_slug = "stapp"
  landing_zone_slug = var.landing_zone_slug
  application_id = var.stack
  workload_info = var.workload_info
  separator = "-"
  #generated_random_value = random_string.random.result
  name_components_list = compact(service_slug,landing_zone_slug,application_id,workload_info)
  standard_name = join(separator,name_components_list)
  name = coalesce(lower(custom_name), lower(standard_name))
}