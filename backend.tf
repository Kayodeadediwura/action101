terraform {
  backend "s3" {
    bucket = "primoris-terraform-store2"
    key    = "env/action/terraform.tfstate"
    region = "eu-west-1"
  }
}