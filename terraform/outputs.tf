output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "app_service_plan_id" {
  value = azurerm_app_service_plan.asp.id
}

output "app_service_default_hostname" {
  value = azurerm_app_service.app.default_site_hostname
  description = "The default URL to access the deployed app"
}
