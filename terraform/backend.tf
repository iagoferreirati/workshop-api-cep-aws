terraform {
  backend "s3" {
    bucket = "terrform-workshtop"
    key    = "prd/api-cep/terraform.tfstate"
    region = "us-east-1"
  }
}