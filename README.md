# Terraform Infrastructure as Code (IaC) - digitalocean container-registry Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates structured container-registry for digitalocean resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.
Example:Basic
```hcl
module "container-registry" {
  source                 = "git::https://github.com/opsstation/terraform-digitalocean-container-registry.git?ref=v1.0.0"
  name                   = local.name
  environment            = local.environment
  subscription_tier_slug = "starter"
  region                 = local.region
  write                  = false
  expiry_seconds         = 1576800000
}
```
Please ensure you specify the correct 'source' path for the module.

## Module Inputs

- `name`: The name of the container_registry.
- `environment`: Label order, e.g. `name`,`application`.
- `label_order`: Label order, e.g. `name`,`application`.
- `subscription_tier_slug`: The slug identifier for the subscription tier to use (starter, basic, or professional).
- `expiry_seconds` : The amount of time to pass before the Docker credentials expire in seconds.


## Module Outputs
- This module currently does not provide any outputs.

# Examples:
For detailed examples on how to use this module, please refer to the '[example](https://github.com/opsstation/terraform-digitalocean-container-registry/tree/master/_example)' directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opsstation/terraform-digitalocean-container-registry/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.3 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.31.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/opsstation/terraform-digitalocean-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [digitalocean_container_registry.test](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry) | resource |
| [digitalocean_container_registry_docker_credentials.example](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry_docker_credentials) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Label order, e.g. `name`,`application`. | `string` | `""` | no |
| <a name="input_expiry_seconds"></a> [expiry\_seconds](#input\_expiry\_seconds) | The amount of time to pass before the Docker credentials expire in seconds. | `number` | `1576800000` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the container\_registry | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically. | `string` | `""` | no |
| <a name="input_subscription_tier_slug"></a> [subscription\_tier\_slug](#input\_subscription\_tier\_slug) | The slug identifier for the subscription tier to use (starter, basic, or professional) | `string` | `""` | no |
| <a name="input_write"></a> [write](#input\_write) | Allow for write access to the container registry. Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The date and time when the registry was created. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The URL endpoint of the container registry. Ex: registry.digitalocean.com/my\_registry. |
| <a name="output_expiry_seconds"></a> [expiry\_seconds](#output\_expiry\_seconds) | Number of seconds after creation for token to expire |
| <a name="output_id"></a> [id](#output\_id) | The id of the container registry |
| <a name="output_name"></a> [name](#output\_name) | The name of the container registry |
| <a name="output_region"></a> [region](#output\_region) | The slug identifier for the region. |
| <a name="output_server_url"></a> [server\_url](#output\_server\_url) | The domain of the container registry. Ex: registry.digitalocean.com. |
| <a name="output_storage_usage_bytes"></a> [storage\_usage\_bytes](#output\_storage\_usage\_bytes) | The amount of storage used in the registry in bytes. |
| <a name="output_subscription_tier_slug"></a> [subscription\_tier\_slug](#output\_subscription\_tier\_slug) | The slug identifier for the subscription tier. |
<!-- END_TF_DOCS -->