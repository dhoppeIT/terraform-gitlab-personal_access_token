variable "base_url" {
  type        = string
  default     = null
  description = "This is the target GitLab base API endpoint"
}

variable "cacert_file" {
  type        = string
  default     = null
  description = "This is a file containing the ca cert to verify the gitlab instance"
}

variable "client_cert" {
  type        = string
  default     = null
  description = "File path to client certificate when GitLab instance is behind company proxy"
}

variable "client_key" {
  type        = string
  default     = null
  description = "File path to client key when GitLab instance is behind company proxy"
}

variable "early_auth_check" {
  type        = bool
  default     = true
  description = "By default the provider does a dummy request to get the current user in order to verify that the provider configuration is correct and the GitLab API is reachable"
}

variable "headers" {
  type        = map(string)
  default     = {}
  description = "A map of headers to append to all API request to the GitLab instance"
}

variable "insecure" {
  type        = bool
  default     = false
  description = "When set to true this disables SSL verification of the connection to the GitLab instance"
}

variable "retries" {
  type        = number
  default     = null
  description = "The number of retries to execute when receiving a 429 Rate Limit error"
}

variable "token" {
  type        = string
  default     = null
  sensitive   = true
  description = "The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab"
}
