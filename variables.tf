# --- Variables ---
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default = "ap-southeast-1"
}
variable "ou_names" {
  description = "List of Organizational Units to create"
  type        = list(string)
  default     = ["AFT-Management", "AFT-Managed-Accounts"]
}

variable "scp_policies" {
  description = "Map of SCP Policies to apply"
  type        = map(string)
  default = {
    "deny-s3-public"   = "Deny S3 Public Access"
  }
}



variable "sso_admins" {
  description = "List of SSO Admin users"
  type        = list(string)
}
