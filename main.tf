resource "gitlab_personal_access_token" "this" {
  name    = var.name
  scopes  = var.scopes
  user_id = var.user_id

  expires_at                    = var.expires_at
  description                   = var.description
  validate_past_expiration_date = var.validate_past_expiration_date

  rotation_configuration = var.rotation_configuration != null ? {
    expiration_days    = var.rotation_configuration["expiration_days"]
    rotate_before_days = var.rotation_configuration["rotate_before_days"]
  } : null
}
