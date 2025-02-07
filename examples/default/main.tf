module "gitlab_personal_access_token" {
  source = "../../"

  name    = "example-access-token"
  scopes  = ["read_api"]
  user_id = data.gitlab_user.this.id

  rotation_configuration = {
    expiration_days    = 365
    rotate_before_days = 7
  }
}
