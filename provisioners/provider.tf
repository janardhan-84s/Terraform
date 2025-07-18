terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "jana-remote-state"
    key    = "provisioners" # the desired name that you have given
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
    region= "us-east-1"
  # Configuration options
}
