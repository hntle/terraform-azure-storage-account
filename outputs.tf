output "out_azr_storage_account_id" {
    value = azurerm_storage_account.main.id
}

output "out_azr_storage_account_name" {
    value = azurerm_storage_account.main.name
}

output "out_azr_storage_account_blob_endpoint" {
    value = azurerm_storage_account.main.primary_blob_endpoint
}

output "out_azr_storage_account_file_endpoint" {
    value = azurerm_storage_account.main.primary_file_endpoint
}

output "out_azr_storage_account_table_endpoint" {
    value = azurerm_storage_account.main.primary_table_endpoint
}

output "out_azr_storage_account_queue_endpoint" {
    value = azurerm_storage_account.main.primary_queue_endpoint
}