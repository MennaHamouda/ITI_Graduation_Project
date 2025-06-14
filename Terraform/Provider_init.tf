terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0"  # You can specify the version you need
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"  # You can specify the version you need
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"  # You can specify the version you need
    }
    }
    backend "s3" {
    bucket         = "mennaterraform-testproject"
    key            = "tuerraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraformState"
  }
}

