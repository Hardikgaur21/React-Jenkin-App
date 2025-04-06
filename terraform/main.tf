provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "reactAppRG"
  location = "East US"
}

resource "azurerm_app_service_plan" "asp" {
  name                = "reactAppPlan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "app" {
  name                = "reactAppService123"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id
}
