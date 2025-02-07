output "active" {
  description = "True if the token is active"
  value       = gitlab_personal_access_token.this.active
}

output "created_at" {
  description = "Time the token has been created, RFC3339 format"
  value       = gitlab_personal_access_token.this.created_at
}

output "id" {
  description = "The ID of the personal access token"
  value       = gitlab_personal_access_token.this.id
}

output "revoked" {
  description = "True if the token is revoked"
  value       = gitlab_personal_access_token.this.revoked
}

output "token" {
  description = "The token of the personal access token"
  value       = gitlab_personal_access_token.this.token
  sensitive   = true
}
