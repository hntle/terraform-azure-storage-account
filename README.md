# Terraform Module - Microsoft Azure - Storage Account

This module allows you to create an Azure Storage Account of various types, SKUs and replication options.

## Prerequisites
This module requires:
- Terraform provider `azurerm` with minimum version of `3.0.0`.
- Terraform version with minimum version of `1.0.0`.

## Usage
An example of how to use this module:
```terraform
module "azure-storage-account-01" {
  source = "./terraform-azure-storage-account"

  azr_rg_name                          = "myRG"
  azr_location                         = "southeastasia"
  azr_storage_account_name             = "mystorageaccount123456"
}
```

The above definition will create a standard Storage Account V2 named `mystorageaccount123456` in Resource Group `myRG` in `Southeast Asia` region, with replication option of `Local Redundancy Storage` or `LRS`.

In the above example, some variables are not defined and they take default values. If you want to override the default value, explicitly define that corresponding variable. Refer to the table in the next section.

## Variables
This module accepts following variables:
| Variable                               | Description                                                    | Default value             | Remark |
|----------------------------------------|----------------------------------------------------------------|---------------------------|--------|
| `azr_rg_name`                          | Declares the name of Resource Group to create Storage Account. | n/a                       |        |
| `azr_location`                         | Declares the Azure Region to create Storage Account.           | n/a                       | Accepts either "Name" or "Display Name" from the result of `Get-AzLocation` or `az account list-locations`. For example, both `southeastasia` and `Southeast Asia` are valid. |
| `azr_storage_account_name`             | Declares the name of Storage Account.                          | n/a  |                    | Accepts an alphanumeric string (lowercase only) of 3 to 24 characters. |
| `azr_storage_account_tier`             | Declares the tier of Storage Account.                          | `Standard`                | Accepts either `Standard` or `Premium`. |
| `azr_storage_account_replication_type` | Declares the replication option of Storage Account.            | `LRS`                     | Accepts one of following: `LRS`, `GRS`, `RAGRS`, `ZRS`. |
| `azr_storage_account_sku`              | Declares the type of Storage Account.                          | `StorageV2`               | Accepts one of following: `Storage`, `StorageV2`, `BlobStorage`. |
| `azr_storage_account_tags`             | Declares the list of Tags to apply on Storage Account.         | `{provisioner="terraform"}` | Accepts a value of type `map`, up to 50 entries. Notice that Azure only allows a maximum of 50 Tags for most of resources. |

## References
This repository's `.gitignore` was automatically generated using  [gitignore.io](https://www.toptal.com/developers/gitignore).