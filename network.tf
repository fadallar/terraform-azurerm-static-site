resource "azurerm_private_endpoint" "static_site_pep" {
  count               = var.enable_private_endpoint == true ? 1 : 0
  name                = format("pe-%s", local.name)
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.private_endpoint_subnet_id
  tags                = merge(var.default_tags, var.extra_tags)
  private_dns_zone_group {
    name                 = "static-site-group"
    private_dns_zone_ids = [var.private_dns_zone_ids]
  }

  private_service_connection {
    name                           = "staticsiteprivatelink"
    is_manual_connection           = false
    private_connection_resource_id = azurerm_static_site.static_site.id
    subresource_names              = ["staticSites"]
  }
}