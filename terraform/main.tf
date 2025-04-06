provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "reactapp-rg"
  location = "East US"
}

resource "azurerm_app_service_plan" "asp" {
  name                = "reactapp-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "app" {
  name                = "reactjenkinsapp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id
}
