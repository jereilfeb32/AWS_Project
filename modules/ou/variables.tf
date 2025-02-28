variable "ou_names" {
  description = "List of Organizational Units to create"
  type        = list(string)
  default     = ["AFT-Management", "AFT-Managed-Accounts"]
}
