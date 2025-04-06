variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
  default     = "reactAppRG"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "reactAppPlan"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
  default     = "reactAppService123"
}
