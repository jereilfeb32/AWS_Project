variable "sso_admins" {
  description = "List of SSO Admin users"
  type        = list(string)
  default     = ["admin@example.com"]
}
