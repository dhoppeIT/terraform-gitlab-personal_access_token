variable "name" {
  type        = string
  description = "The name of the personal access token"
}

variable "scopes" {
  type        = list(string)
  description = "The scopes of the personal access token"

  # validation {
  #   condition     = contains(["api", "read_user", "read_api", "read_repository", "write_repository", "read_registry", "write_registry", "sudo", "admin_mode", "create_runner", "manage_runner", "ai_features", "k8s_proxy", "read_service_ping"], var.scopes)
  #   error_message = "Valid values are api, read_user, read_api, read_repository, write_repository, read_registry, write_registry, sudo, admin_mode, create_runner, manage_runner, ai_features, k8s_proxy, read_service_ping"
  # }
}

variable "user_id" {
  type        = string
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
  description = "When the token will expire, YYYY-MM-DD format"
}

variable "rotation_configuration" {
  type = object(
    {
      expiration_days    = optional(number)
      rotate_before_days = optional(number)
    }
  )
  default     = {}
  description = "The configuration for when to rotate a token automatically"
}
