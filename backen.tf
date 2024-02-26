terraform {
  backend "s3" {
    profile = "profile"
    bucket = "shelltech2024"
    key    = "terraform.tf"
    region = "us-east-2"
  }
}
