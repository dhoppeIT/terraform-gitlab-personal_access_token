resource "gitlab_personal_access_token" "this" {
  name    = var.name
  scopes  = var.scopes
  user_id = var.user_id

  expires_at                    = var.expires_at
  description                   = var.description
  validate_past_expiration_date = var.validate_past_expiration_date

  rotation_configuration = {
    expiration_days    = try(var.rotation_configuration["expiration_days"], null)
    rotate_before_days = try(var.rotation_configuration["rotate_before_days"], null)
  }
}
