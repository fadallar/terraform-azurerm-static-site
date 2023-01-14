// Basic Azure static site set-up

// Core modules

module "regions_master" {
  source  = "app.terraform.io/<ORGANIZATION>/regions-master/azurem"
  version = "x.y.z"
  azure_region = var.location # example eu-west
}

module "base_tagging" {
  source  = "app.terraform.io/<ORGANIZATION>/base-tagging/azurerm"
  version = "x.y.z"
  environment = var.environment
  stack = var.stack
  spoc =  var.spoc
  change = var.change
  costcenter = var.costcenter
  owner = var.owner
}

// Resource Group
module "ressource" {
    source  = "app.terraform.io/<ORGANIZATION>/rg/azurerm"
    version = "x.y.z"
    environment = var.environment
    stack       = var.stack
    location    = module.regions_master.location
    location_short                  = module.regions_master.location_short


// Static Site

module "static-site" {
  source  = "app.terraform.io/<ORGANIZATION>/static-site/azurerm"
  version = "x.y.z"
  // Common base
  environment = var.environment
  stack       = var.stack
  landing_zone_slug = var.landing_zone_slug
  location                        = module.regions_master.location
  location_short                  = module.regions_master.location_short
  resource_group_name             = module.rg.resource_group_name
  default_tags                    = module.base-tagging.base_tags
  // 

  workload_info = "angularfrontend"  ## Optional will append this string to the resource name

  // Static Site Private Endpoint specifics
  private_endpoint_subnet_id      = " " ### Pass the resource id of the subnet used by the static site private endpoint 
  private_dns_zone_ids            = " " ### Pass thre resource id of the privatelink.2.azurestaticapps.net dns zone used by the private endpoont
}