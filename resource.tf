resource "azurerm_resource_group" "terraazure" {
    name     = "example-resources"
    location = "East US"
}
 
resource "azurerm_storage_account" "saterra" {
    name                     = "terrasa5171"
    resource_group_name      = azurerm_resource_group.terraazure.name
    location                 = azurerm_resource_group.terraazure.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
 
resource "azurerm_storage_container" "sacontainer" {
    name                  = "terra-container"
    storage_account_name  = azurerm_storage_account.saterra.name
    container_access_type = "private"
}