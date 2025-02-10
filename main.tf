
# Crée un groupe de ressources
resource "azurerm_resource_group" "rg" {
  name     = "my-resource-group"
  location = "West Europe"
}

# Crée un plan App Service
resource "azurerm_service_plan" "asp" {
  name                = "my-app-service-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "P1v2"  # Plan tarifaire
  os_type             = "Windows"
}

# Crée une Web App Windows
resource "azurerm_windows_web_app" "web_app" {
  name                = "my-windows-web-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = true
  }
}
