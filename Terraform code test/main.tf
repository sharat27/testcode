provider "azurerm" {
  version = 1.38
}

resource "azurerm_resource_group" "arg" {
  name     = var.resourcegroup
  location = var.location
}

resource "azurerm_storage_account" "asa" {
  name                     = var.stgacc
  resource_group_name      = azurerm_resource_group.arg.name
  location                 = azurerm_resource_group.arg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}