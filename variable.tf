variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources Azure"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "Localisation des ressources Azure"
  type        = string
  default     = "West Europe"
}

variable "app_service_plan_name" {
  description = "Nom du plan App Service"
  type        = string
  default     = "my-app-service-plan"
}

variable "web_app_name" {
  description = "Nom de la Web App"
  type        = string
  default     = "my-windows-web-app"
}

variable "sku_name" {
  description = "Référence SKU du plan App Service"
  type        = string
  default     = "P1v2"
}
