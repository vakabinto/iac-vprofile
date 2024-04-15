terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.45.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.29.0"
    }
  }

  backend "s3" {
    bucket = "akadevops"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_version = "~> 1.7.3"
}
##

##
