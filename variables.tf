# --- Variables ---
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}
variable "ou_names" {
  description = "List of Organizational Units to create"
  type        = list(string)
  default     = ["AFT-Management", "AFT-Managed-Accounts"]
}

variable "scp_policies" {
  description = "Map of SCP Policies to apply"
  type        = map(string)
}


variable "sso_admins" {
  description = "List of SSO Admin users"
  type        = list(string)
  default     = ["admin@example.com"]
}