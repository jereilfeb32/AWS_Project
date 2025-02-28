terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Latest major version
    }
  }
}

provider "aws" {
  region = var.region  # Made region a variable for flexibility
}