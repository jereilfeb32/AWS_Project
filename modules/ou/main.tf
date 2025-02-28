resource "aws_organizations_organizational_unit" "ou" {
  for_each  = toset(var.ou_names)
  name      = each.key
  parent_id = aws_organizations_organization.main.id
}
resource "aws_organizations_organization" "main" {
  feature_set = "ALL"
}
