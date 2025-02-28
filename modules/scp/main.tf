resource "aws_organizations_policy" "scp" {
  for_each = var.scp_policies
  name     = each.key
  type     = "SERVICE_CONTROL_POLICY"
  content  = file("policies/scp/${each.key}.json")
}

resource "aws_organizations_policy_attachment" "attach_scp" {
  for_each    = aws_organizations_policy.scp
  policy_id   = each.value.id
  target_id   = module.ou_creation[0].id
}
