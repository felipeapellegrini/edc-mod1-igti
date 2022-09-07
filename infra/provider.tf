provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "terraform-felipe-${var.account_number}"
    key = "state/igti/edc/mod1/terraform.tfstate"
    region = var.aws_region
  }
}
