provider "gitlab" {
  base_url               = var.base_url
  cacert_file            = var.cacert_file
  client_cert            = var.client_cert
  client_key             = var.client_key
  config_file            = var.config_file
  context                = var.context
  early_auth_check       = var.early_auth_check
  enable_auto_ci_support = var.enable_auto_ci_support
  headers                = var.headers
  insecure               = var.insecure
  retries                = var.retries
  token                  = var.token
}
