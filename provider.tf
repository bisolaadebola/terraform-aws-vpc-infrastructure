provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project     = "Terraform AWS VPC"
      Environment = "Learning"
      ManagedBy   = "Terraform"
      Owner       = "Bisola"
    }
  }
}