terraform {
  backend "s3" {
    bucket = "jones-shiny-tf-bucket"
    key = "jones/tf-deployment/terraform-aws-ecs.tfstate"
    region = "eu-west-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=5.39.0"
    }
  }
}
