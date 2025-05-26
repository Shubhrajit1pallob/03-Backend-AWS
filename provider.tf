terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "03-backend-bucket-shubhrajit"
    key    = "04-backends/state.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "us-east-1"
}