terraform {
  required_version = ">= 1.3.9"

  required_providers {
    aws = {
      version = ">= 4.56.0"
      source  = "hashicorp/aws"
    }
  }
}
