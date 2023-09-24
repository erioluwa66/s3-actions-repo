module "s3" {
  source = "git@github.com:erioluwa66/s3-backend-repo.git//s3module?ref=v1.2.1"
}

#backend configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "Landmark-automation-mariam"
    region  = "us-east-2"
    key     = "action/terraform.tfstate"
    encrypt = true

  }


}