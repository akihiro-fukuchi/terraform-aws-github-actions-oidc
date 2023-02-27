provider "aws" {
  region = "ap-northeast-1"
}

module "oidc" {
  source              = "../"
  iam_role_name       = "example-github-actions-oidc"
  iam_role_policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  github_repository   = "akihiro-fukuchi/terraform-aws-github-actions-oidc"
}
