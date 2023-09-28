include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:edugdias/infrastructure-tf-modules.git//ec2?ref=main"
}
inputs = {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t3.micro"
  environment   = "prod"
  region        = "us-east-1"
}
