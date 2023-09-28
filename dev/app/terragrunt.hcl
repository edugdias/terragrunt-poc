include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:edugdias/infrastructure-tf-modules.git//ec2?ref=main"
  // source = "../../../infrastructure-tf-modules/ec2"
}
inputs = {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"
  environment   = "dev"
  region        = "us-east-1"
}
