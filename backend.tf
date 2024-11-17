terraform {
  backend "s3" {
    bucket = "action-terraform-store"
    key    = "action/dev/terraform.tfstate"
    region = "eu-west-1"
  }
}