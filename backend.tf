terraform {
  backend "s3" {
    bucket = "primoris-terraform-store"
    key    = "action/dev/terraform.tfstate"
    region = "eu-west-1"
  }
}