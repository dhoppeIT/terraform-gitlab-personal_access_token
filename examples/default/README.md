# Example

The configuration in this directory creates:

* gitlab_personal_access_token

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_personal_access_token"></a> [gitlab\_personal\_access\_token](#module\_gitlab\_personal\_access\_token) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [gitlab_user.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_url"></a> [base\_url](#input\_base\_url) | This is the target GitLab base API endpoint | `string` | `null` | no |
| <a name="input_cacert_file"></a> [cacert\_file](#input\_cacert\_file) | This is a file containing the ca cert to verify the gitlab instance | `string` | `null` | no |
| <a name="input_client_cert"></a> [client\_cert](#input\_client\_cert) | File path to client certificate when GitLab instance is behind company proxy | `string` | `null` | no |
| <a name="input_client_key"></a> [client\_key](#input\_client\_key) | File path to client key when GitLab instance is behind company proxy | `string` | `null` | no |
| <a name="input_early_auth_check"></a> [early\_auth\_check](#input\_early\_auth\_check) | By default the provider does a dummy request to get the current user in order to verify that the provider configuration is correct and the GitLab API is reachable | `bool` | `true` | no |
| <a name="input_headers"></a> [headers](#input\_headers) | A map of headers to append to all API request to the GitLab instance | `map(string)` | `{}` | no |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | When set to true this disables SSL verification of the connection to the GitLab instance | `bool` | `false` | no |
| <a name="input_retries"></a> [retries](#input\_retries) | The number of retries to execute when receiving a 429 Rate Limit error | `number` | `null` | no |
| <a name="input_token"></a> [token](#input\_token) | The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_active"></a> [active](#output\_active) | True if the token is active |
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | Time the token has been created, RFC3339 format |
| <a name="output_id"></a> [id](#output\_id) | The ID of the personal access token |
| <a name="output_revoked"></a> [revoked](#output\_revoked) | True if the token is revoked |
| <a name="output_token"></a> [token](#output\_token) | The token of the personal access token |
<!-- END_TF_DOCS -->
