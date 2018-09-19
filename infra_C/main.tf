provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}


#-----------key pair

#resource "aws_key_pair" "SC-Dev-auth" {
#  key_name   = "${var.key_name}"
#  public_key = "${file(var.public_key_path)}"
#}

#------------dev-instance-creation-----------------------

resource "aws_instance" "SC-DEV-USE1A-BUILD-TF" {
  instance_type = "${var.dev_instance_type}"
  ami           = "${var.dev_ami}"

  tags {
    Name = "SC-DEV-USE1A-BUILD-TF"
  }

  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["${var.security_group}"]
  #vpc_id                 = "${var.vpc_id}"
  subnet_id              = "${var.subnet_id}"

 }

