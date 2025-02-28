data "aws_ssoadmin_instances" "main" {}

resource "aws_ssoadmin_permission_set" "admin" {
  for_each      = toset(var.sso_admins)
  name          = "AFT-Admin-${each.key}"
  description   = "Admin Access for AFT"
  instance_arn  = data.aws_ssoadmin_instances.main.arns[0]
  session_duration = "PT8H"
}

resource "aws_ssoadmin_managed_policy_attachment" "sso_admin" {
  for_each           = aws_ssoadmin_permission_set.admin
  instance_arn       = data.aws_ssoadmin_instances.main.arns[0]
  permission_set_arn = each.value.arn
  managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
