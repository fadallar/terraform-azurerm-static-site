output "static_site_id" {
  description = "The ID of the Static Web App"
  value       = azurerm_static_site.static_site.id
}

output "static_site_identity" {
  description = "An identity block as defined below which contains the Managed Service Identity information for this resource."
  value       = azurerm_static_site.static_site.identity

}

output "static_site_api_key" {
  description = "The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action."
  value       = azurerm_static_site.static_site.api_key
}

output "static_site_default_host_name" {
  description = "The default host name of the Static Web App."
  value       = azurerm_static_site.static_site.default_host_name
}