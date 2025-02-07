provider "gitlab" {
  base_url         = var.base_url
  cacert_file      = var.cacert_file
  client_cert      = var.client_cert
  client_key       = var.client_key
  early_auth_check = var.early_auth_check
  headers          = var.headers
  insecure         = var.insecure
  retries          = var.retries
  token            = var.token
}
