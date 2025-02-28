variable "role_name" {
  description = "Name of the IAM Role for AFT Execution"
  type        = string
  default     = "AFT-Execution-Role"
}

variable "assume_role_policy" {
  description = "Name of the IAM Assume Role Policy Document"
  type        = string
  default     = "assume_role_policy.json"
}



variable "policy_file" {
  description = "Path to the IAM Policy JSON file"
  type        = string
  default     = "policies/aft_policy.json"
}
