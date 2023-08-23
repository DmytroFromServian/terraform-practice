terraform {
  cloud {
    organization = "super-cool-new-org"
    workspaces {
      name = "qshare-workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}