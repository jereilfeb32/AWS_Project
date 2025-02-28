resource "aws_iam_role" "aft_execution" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_policy" "aft_policy" {
  name   = "AFT-Policy"
  policy = file(var.policy_file)
}

resource "aws_iam_role_policy_attachment" "attach_policy" {
  role       = aws_iam_role.aft_execution.name
  policy_arn = aws_iam_policy.aft_policy.arn
}