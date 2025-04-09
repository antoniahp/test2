
variable "slack_token" {
  description = "El token de autenticación de Slack"
  type        = string
  sensitive   = true
}

variable "users" {
  description = "List of users to create in Slack"
  type = list(object({
    email        = string
  }))
} 