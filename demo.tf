provider "aws" {
region = "us-west-1"
access_key = "AKIASZDKKLCI5AOKGQXC"
secret_key  = "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"
}

variable "users" {
  type = list(string)
  default = ["user1", "user2", "user3"]
}

resource "aws_iam_user" "user" {
  name = var.users[1]
} 
 variable "mapuser" {
  type = map(string)
  default = {
    "us-east-1" = "user1"
    "us-west-1" = "user2"
    "us-east-2" = "user3"
  }
 }
  resource "aws_instance" "ec2" {
    ami = "ami-011ab7c70f5b5170a"
    instance_type = var.mapuser["us-east-1"]
  }
