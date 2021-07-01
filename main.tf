resource "azurerm_resource_group" "demo" { 
name     = "ragaresource" 
location = "West US"
}
resource "azurerm_storage_account" "demo" { 
name                     = "storage13071995" 
resource_group_name      = azurerm_resource_group.demo.name 
location                 = azurerm_resource_group.demo.location 
account_tier             = "Standard" 
account_replication_type = "GRS"
}
resource "azurerm_storage_container" "demo" { 
name                  = "container-01" 
storage_account_name  = azurerm_storage_account.demo.name 
container_access_type = "private"
}
