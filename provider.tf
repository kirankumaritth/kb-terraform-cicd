terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.60.0"
    }
  }

  backend "remote" {
    organization = "kloudbuild-academy"

    workspaces {
      name = "kb-tfc-demo"
    }
  }
}

provider "aws" {
  region = var.region
}
