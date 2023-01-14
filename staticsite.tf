resource "azurerm_static_site" "static_site" {
  name                = local.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_tier            = var.sku_tier
  sku_size            = var.sku_size
  
  dynamic "identity" {
    count = var.identity_type != null ? 1 : 0
    type         = var.identity_type
    identity_ids = var.identity_ids == "UserAssigned" ? var.identity_ids : null
    }

  tags = merge(var.default_tags, var.extra_tags)
}