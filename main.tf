# Set a cloud provider
provider "aws" {
  region  = var.aws_region
  profile = "default"
}

terraform {
  required_version = ">= 1.0.0"  # Especifica a versão mínima do Terraform

  # Backend S3 para armazenar o estado

  backend "s3" {
    bucket  = "SUA_BUCKET_S3"
    key     = "CAMINHO_PARA_ARMAZENAR_SEU/terraform.tfstate"
    region  = "SUA_REGIAO"
    profile = "default"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.53.0"
    }
  }
}