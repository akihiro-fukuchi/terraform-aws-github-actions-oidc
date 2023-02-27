locals {
  oidc_url = "token.actions.githubusercontent.com"
}

data "aws_iam_openid_connect_provider" "gha" {
  url = "https://${local.oidc_url}"
}

data "aws_iam_policy_document" "gha" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRoleWithWebIdentity",
    ]
    principals {
      type = "Federated"
      identifiers = [
        data.aws_iam_openid_connect_provider.gha.arn,
      ]
    }
    condition {
      test     = "StringLike"
      variable = "${local.oidc_url}:sub"
      values = [
        "repo:${var.github_repository}:*",
      ]
    }
  }
}

resource "aws_iam_role" "gha" {
  name               = var.iam_role_name
  path               = "/"
  assume_role_policy = data.aws_iam_policy_document.gha.json
}

resource "aws_iam_role_policy_attachment" "gha" {
  role       = aws_iam_role.gha.name
  policy_arn = var.iam_role_policy_arn
}
