# terraform-azurerm-ksoc-connect

Allows KSOC to connect to your Azure accounts to perform AKS discovery and perform pro-active monitoring of these resources.

## Terraform Registry

This module is available in the [Terraform Registry](https://registry.terraform.io/) see [here](https://registry.terraform.io/modules/ksoclabs/ksoc-connect/azurerm/latest).

## Contributing

The most important thing to be aware of when contributing is that we leverage the [Semantic Release Action](https://github.com/cycjimmy/semantic-release-action) to automate our changelog, see [here](CHANGELOG.md).

This requires us to use [conventional git commits](https://www.conventionalcommits.org/en/v1.0.0/) when committing to this repository.

Each PR merge into the `main` branch will execute the release process defined [here](.github/workflows/release.yml).

## Usage

During the sign-up process, you will need to execute this module to allow KSOC to discovery AKS clusters and perform monitoring.

Use the following to configure the Azure Terraform provider:

```terraform
provider "azuread" {
  tenant_id = <add your azure tenant id here>
}

provider "azurerm" {
  features {}
  client_id       = <add your azure client id here>
  subscription_id = <add your azure subscription id here>
  tenant_id       = <add your azure tenant id here>
}
```

``` terraform
module "ksoc-connect" {
  source  = "ksoclabs/ksoc-connect/azurerm"
  version = "<version>"
}
```

Once applied, you need to provide your Azure tenant and subscription ID to KSOC to complete the connection process.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.8 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | = 2.26.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | = 3.13.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | = 2.26.1 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | = 3.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_app_role_assignment.ksoc](https://registry.terraform.io/providers/hashicorp/azuread/2.26.1/docs/resources/app_role_assignment) | resource |
| [azuread_service_principal.ksoc](https://registry.terraform.io/providers/hashicorp/azuread/2.26.1/docs/resources/service_principal) | resource |
| [azurerm_role_assignment.ksoc](https://registry.terraform.io/providers/hashicorp/azurerm/3.13.0/docs/resources/role_assignment) | resource |
| [azurerm_role_definition.ksoc](https://registry.terraform.io/providers/hashicorp/azurerm/3.13.0/docs/resources/role_definition) | resource |
| [azurerm_subscription.primary](https://registry.terraform.io/providers/hashicorp/azurerm/3.13.0/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ksoc_app_id"></a> [ksoc\_app\_id](#input\_ksoc\_app\_id) | The ID of the KSOC Azure application. | `string` | `"9c15e8ef-e43f-47aa-8476-227fc2ca27c7"` | no |
| <a name="input_ksoc_app_role_id"></a> [ksoc\_app\_role\_id](#input\_ksoc\_app\_role\_id) | The Role ID of the KSOC Azure application. | `string` | `"40565363-d363-2294-2fff-9eec0d248dfc"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License
Apache 2 Licensed. See [LICENSE](LICENSE) for full details.
