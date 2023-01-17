# Azure Static Site
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io)


## Azure terraform module to create an Azure Static Site with an optional private endpoint


### Naming and Tagging

Static Site resource name is auto generated following the following pattern:

```
stapp-[landing_zone_slug]-[stack]-[workload_info]-[environment]-[3 chars random alphanumeric]

```

workload_info is optional 

Setting the custom_name variable  will overide the auto-generated name

### Private Endpoint

The module creates a private endpoint but the private endpoint subnet and associated private dns zone are not created by this module


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.36 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.36 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_endpoint.static_site_pep](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_static_site.static_site](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/static_site) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/3.4.3/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Project environment | `string` | n/a | yes |
| <a name="input_landing_zone_slug"></a> [landing\_zone\_slug](#input\_landing\_zone\_slug) | Landing zone acronym,it will used to generate the resource nae | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Azure location | `string` | n/a | yes |
| <a name="input_location_short"></a> [location\_short](#input\_location\_short) | Short string for Azure location | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group the resources will belong to | `string` | n/a | yes |
| <a name="input_stack"></a> [stack](#input\_stack) | Project, Application or Workload identifier | `string` | n/a | yes |
| <a name="input_custom_name"></a> [custom\_name](#input\_custom\_name) | Custom Azure Static Site name, it will overide the generate name if set | `string` | `""` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Default Base tagging | `map(string)` | `{}` | no |
| <a name="input_default_tags_enabled"></a> [default\_tags\_enabled](#input\_default\_tags\_enabled) | Option to enable or disable default tags. | `bool` | `true` | no |
| <a name="input_enable_private_endpoint"></a> [enable\_private\_endpoint](#input\_enable\_private\_endpoint) | Static Site Private DNS Zone id. Required if private endpoint is enabled | `bool` | `true` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to add. | `map(string)` | `{}` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | A list of Managed Identity IDs which should be assigned to this Static Site resource | `list(any)` | `null` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The Type of Managed Identity assigned to this Static Site resource. Possible values are SystemAssigned, UserAssigned and : SystemAssigned, UserAssigned | `string` | `null` | no |
| <a name="input_private_dns_zone_ids"></a> [private\_dns\_zone\_ids](#input\_private\_dns\_zone\_ids) | Static Site Private DNS Zone id. Required if private endpoint is enabled | `string` | `null` | no |
| <a name="input_private_endpoint_subnet_id"></a> [private\_endpoint\_subnet\_id](#input\_private\_endpoint\_subnet\_id) | Subnet Id the private endpoint is associated with. Required if private endpoint is used | `string` | `null` | no |
| <a name="input_sku_size"></a> [sku\_size](#input\_sku\_size) | Specifies the SKU size of the Static Web App. Possible values are Free or Standard | `string` | `"Standard"` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | Specifies the SKU tier of the Static Web App. Possible values are Free or Standard | `string` | `"Standard"` | no |
| <a name="input_workload_info"></a> [workload\_info](#input\_workload\_info) | Workload additional info to be used in the resource name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_static_site_api_key"></a> [static\_site\_api\_key](#output\_static\_site\_api\_key) | The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action. |
| <a name="output_static_site_default_host_name"></a> [static\_site\_default\_host\_name](#output\_static\_site\_default\_host\_name) | The default host name of the Static Web App. |
| <a name="output_static_site_id"></a> [static\_site\_id](#output\_static\_site\_id) | The ID of the Static Web App |
| <a name="output_static_site_identity"></a> [static\_site\_identity](#output\_static\_site\_identity) | An identity block as defined below which contains the Managed Service Identity information for this resource. |
<!-- END_TF_DOCS -->

## Related documentation

Azure Lock management documentation: [docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources?tabs=json)
