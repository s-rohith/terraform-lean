terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
      #   version = "~> 1.2"
      #   version = "2.0.0"
      #   version = "!= 2.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.10"
    }
  }
}

provider "local" {
  # Configuration options
}


provider "aws" {
  region = "us-east-1"
  alias  = "us-e1"
}

provider "aws" {
  region = "us-west-1"
  alias  = "us-w1"

}

