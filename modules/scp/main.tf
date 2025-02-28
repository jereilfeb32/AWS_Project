resource "aws_organizations_policy" "scp" {
  for_each    = var.scp_policies
  name        = each.value
  type        = "SERVICE_CONTROL_POLICY"
  content     = file("policies/scp/${each.value}.json")
  target_ids  = module.ou_creation.*.id
}