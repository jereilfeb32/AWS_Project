variable "scp_policies" {
  description = "List of SCP Policies to apply"
  type        = list(string)
  default     = ["deny-s3-public", "restrict-regions"]
}
