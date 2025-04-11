provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "mi_bucket" {
  bucket        = "mi-bucket-cicd"
  force_destroy = true

  tags = {
    Proyecto = "CI/CD con LocalStack"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "mi-bucket-v1"
}
