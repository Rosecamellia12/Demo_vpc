terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  shared_config_files =  ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
}

