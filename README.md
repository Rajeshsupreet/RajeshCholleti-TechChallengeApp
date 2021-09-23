<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# terraform-cloudfoundry-servian-app

Deploys a servian app to Cloud foundry


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_cloudfoundry"></a> [cloudfoundry](#requirement\_cloudfoundry) | >= 0.14.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | >= 0.14.1 |
| <a name="provider_hsdp"></a> [hsdp](#provider\_hsdp) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudfoundry_service_instance.database](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/service_instance) | resource |
| [cloudfoundry_service_key.database_key](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/service_key) | resource |
| [cloudfoundry_domain.domain](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/domain) | data source |
| [cloudfoundry_org.org](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/org) | data source |
| [cloudfoundry_service.rds](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/service) | data source |
| [hsdp_config.cf](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/config) | data source |



# Contact / Getting help

Please reach me at  [Rajesh Cholleti](mailto:rajesh4277@gmail.com)