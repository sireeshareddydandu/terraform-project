# ---------------------------
# main.tf
# ---------------------------

data "azuread_client_config" "current" {}

resource "azuread_application" "app" {
  display_name     = var.app_name
  sign_in_audience = "AzureADMyOrg"

  feature_tags {
    enterprise = true
    gallery    = false
  }
}

resource "azuread_service_principal" "sp" {
  client_id = azuread_application.app.client_id
}

resource "azuread_application_password" "secret" {
  application_id = azuread_application.app.application_id
  display_name   = "terraform-secret"
}

output "application_name" {
  value = azuread_application.app.display_name
}

output "client_id" {
  value = azuread_application.app.client_id
}

output "tenant_id" {
  value = data.azuread_client_config.current.tenant_id
}

output "client_secret" {
  value     = azuread_application_password.secret.value
  sensitive = true
}