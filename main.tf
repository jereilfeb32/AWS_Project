# --- 1. Organizational Units (OUs) ---
module "ou_creation" {
  source    = "./modules/ou"
  ou_names  = var.ou_names
}

# --- 2. SCP Policies ---
module "scp" {
  source        = "./modules/scp"
  scp_policies  = var.scp_policies
}

# --- 3. IAM Roles and Policies ---
module "iam_aft_execution" {
  source = "./modules/iam_role"
  role_name = "AFT-Execution-Role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "controltower.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })
  policy_file = "policies/aft_policy.json"
}

# --- 4. AWS SSO Setup ---
module "sso_users" {
  source     = "./modules/sso_users"
  sso_admins = var.sso_admins
}