terraform {
  backend "s3" {
    bucket         = "informaticos-terraform"
    key            = "terraform-state/serveless-arch.state"
    region         = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.18.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}