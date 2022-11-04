variable "azr_rg_name" {
  description = "Name of Resource Group of the Storage Account"
}

variable "azr_location" {
  description = "Azure location of the Storage Account"
}

variable "azr_storage_account_name" {
  description = "Name of the Storage Account. Accepts alphanumeric string of 3 to 24 characters."
  type = string
  validation {
    condition = length(var.azr_storage_account_name) >=3 && length(var.azr_storage_account_name) <= 24 && can(regex("^[a-z0-9]{3,24}$",var.azr_storage_account_name))
    error_message = "Invalid Storage Account name. Must be between 3 to 24 alphanumeric characters."
  }
}

variable "azr_storage_account_tier" {
  description = "Tier of the Storage Account. Available options are: Standard, Premium"
  type = string
  validation {
    condition = contains(["Standard","Premium"], var.azr_storage_account_tier)
    error_message = "Invalid Storage Account tier. Can only be either Standard or Premium."
  }
}

variable "azr_storage_account_replication_type" {
  description = "Replication option for the Storage Account: Local Redundant Storage, Geo-Redundant Storage, Read-Access Geo-Redundant Storage and Zone-Redundant Storage. Available options are: LRS, GRS, RAGRS, ZRS."
  type = string
  validation {
    condition = contains(["LRS","GRS","RAGRS","ZRS"], var.azr_storage_account_replication_type)
    error_message = "Invalid Storage Account replication type. Can only be either LRS, GRS, RAGRS or ZRS."
  }
}

variable "azr_storage_account_sku" {
  description = "SKU of the Storage Account. Available options are: Storage, StorageV2, BlobStorage."
  type = string
  validation {
    condition = contains(["Storage","StorageV2","BlobStorage"], var.azr_storage_account_sku)
    error_message = "Invalid Storage Account SKU. Can only be either Storage, StorageV2 or BlobStorage."
  }
}

variable "azr_storage_account_tags" {
  description = "A collection of Tags to be applied on the Storage Account. Limited to a maximum of 15 Tags."
  type = map
  default = {
    provisioner = "terraform"
  }
}