# AWS Provider

provider "aws" {
  region = var.region
}


terraform {
  backend "s3" {
    bucket = "stag-hafees-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}