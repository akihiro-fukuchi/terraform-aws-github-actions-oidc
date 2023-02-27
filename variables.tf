variable "iam_role_name" {
  type        = string
  description = "AWS IAM role name"
}
variable "iam_role_policy_arn" {
  type        = string
  description = "AWS IAM role policy arn"
}
variable "github_repository" {
  type        = string
  description = "GitHub repository name (org/repo)"
}
