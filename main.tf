

# Crée un groupe de ressources
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Crée un plan App Service
resource "azurerm_service_plan" "asp" {
  count               = 3  
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = var.sku_name
  os_type             = "Windows"
}

# Crée une Web App Windows
resource "azurerm_windows_web_app" "web_app" {
  name                = var.web_app_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = true  # Garder l'application toujours active
  }
}
