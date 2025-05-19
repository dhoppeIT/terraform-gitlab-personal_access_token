# terraform-gitlab-personal_access_token

Terraform module to manage the following Twingate resources:

* gitlab_personal_access_token

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_user" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-user/local"
  version = "1.2.0"

  name     = "John Doe"
  username = "jdoe"
  password = "XKvhCJp9MtwTgwRu" # gitleaks:allow
  email    = "john.doe@example.com"
}

module "gitlab_personal_access_token" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-personal-access-token/local"
  version = "1.0.0"

  name    = "example-access-token"
  scopes  = ["read_api"]
  user_id = module.gitlab_user.id

  rotation_configuration = {
    expiration_days    = 365
    rotate_before_days = 7
  }
}
```

:warning: This feature requires a Premium / Ultimate license or self-managed
instance.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_personal_access_token.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/personal_access_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the personal access token | `string` | `null` | no |
| <a name="input_expires_at"></a> [expires\_at](#input\_expires\_at) | When the token will expire, YYYY-MM-DD format | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the personal access token | `string` | n/a | yes |
| <a name="input_rotation_configuration"></a> [rotation\_configuration](#input\_rotation\_configuration) | The configuration for when to rotate a token automatically | ```object( { expiration_days = optional(number) rotate_before_days = optional(number) } )``` | `{}` | no |
| <a name="input_scopes"></a> [scopes](#input\_scopes) | The scopes of the personal access token | `list(string)` | n/a | yes |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | The ID of the user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_active"></a> [active](#output\_active) | True if the token is active |
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | Time the token has been created, RFC3339 format |
| <a name="output_id"></a> [id](#output\_id) | The ID of the personal access token |
| <a name="output_revoked"></a> [revoked](#output\_revoked) | True if the token is revoked |
| <a name="output_token"></a> [token](#output\_token) | The token of the personal access token |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
