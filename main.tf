terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
  required_version = ">= 1.0.0"
}

resource "azurerm_storage_account" "main" {
  resource_group_name         = var.azr_rg_name
  location                    = var.azr_location

  name                        = var.azr_storage_account_name
  account_tier                = var.azr_storage_account_tier
  account_replication_type    = var.azr_storage_account_replication_type
  account_kind                = var.azr_storage_account_sku

  tags                        = var.azr_storage_account_tags
}