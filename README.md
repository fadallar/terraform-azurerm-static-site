# Azure Static Site
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io)




## Azure terraform module to create an Azure Static Site with an optional private endpoint


### Naming and Tagging

Static Site resource name is auto generated following the following pattern:

```
stapp-[landing_zone_sluf]-[stack]-[workload_info]-[environment]-[3 chars random alphanumeric]

```

workload_info is optional 

Setting the custom_name variable  will overide the auto-generated name

### Private Endpoint

The module creates a private endpoint but the private endpoint subnet and associated private dns zone are not created by this module


<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->

## Related documentation

Azure Lock management documentation: [docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources?tabs=json)
