# terraform-aws-github-actions-oidc

A Terraform module to configure OIDC between GitHub Actions and AWS.

## Usage

Following [example](example/main.tf) to create an OIDC connection between AWS and your GitHub Actions.

> 👉 **Note**: OIDC provider must be pre-created.
> To add the GitHub OIDC provider, see the [GitHub documents](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services#adding-the-identity-provider-to-aws)


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| iam_role_name | Name of the OIDC role. | string | n/a | yes |
| iam_role_policy_arn | ARN of policy to be attached to the role. | string | n/a | yes |
| github_repository | GitHub repository name(`ORG/REPO`). | string | n/a | yes |

