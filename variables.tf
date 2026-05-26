variable "name" {
  type        = string
  description = "The name of the personal access token"
}

variable "scopes" {
  type        = set(string)
  description = "The scopes of the personal access token"

  validation {
    condition = alltrue([
      for scope in var.scopes : contains([
        "api",
        "read_user",
        "read_api",
        "read_repository",
        "write_repository",
        "read_registry",
        "write_registry",
        "read_virtual_registry",
        "write_virtual_registry",
        "sudo",
        "admin_mode",
        "create_runner",
        "manage_runner",
        "ai_features",
        "k8s_proxy",
        "self_rotate",
        "read_service_ping",
      ], scope)
    ])
    error_message = "Valid values are api, read_user, read_api, read_repository, write_repository, read_registry, write_registry, read_virtual_registry, write_virtual_registry, sudo, admin_mode, create_runner, manage_runner, ai_features, k8s_proxy, self_rotate, read_service_ping."
  }
}

variable "user_id" {
  type        = number
  description = "The ID of the user"
}

variable "description" {
  type        = string
  default     = null
  description = "The description of the personal access token"
}

variable "expires_at" {
  type        = string
  default     = null
  description = "When the token will expire, YYYY-MM-DD format. Is automatically set when rotation_configuration is used"
}

variable "rotation_configuration" {
  type = object(
    {
      expiration_days    = number
      rotate_before_days = number
    }
  )
  default     = null
  description = "The configuration for when to rotate a token automatically. Will not rotate a token until terraform apply is run"
}

variable "validate_past_expiration_date" {
  type        = bool
  default     = null
  description = "Whether to validate if the expiration date is in the future"
}
