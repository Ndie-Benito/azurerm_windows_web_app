output "web_app_name" {
  description = "Nom de la Web App créée"
  value       = azurerm_windows_web_app.web_app.name
}

output "web_app_url" {
  description = "URL de la Web App"
  value       = azurerm_windows_web_app.web_app.default_hostname
}
