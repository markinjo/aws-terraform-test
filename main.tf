provider "aws" {
  region  = "eu-central-1"
  profile = "marko"
}


resource "aws_instance" "myec2vm" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  #instance_type = var.instance_type_list[1]  # For List
  #nstance_type = var.instance_type_map["prod"]  # For Map
  user_data              = file("${path.module}/skripta.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  #count                  = 2
  tags = {
    "Name" = "Count-Demo-" #${count.index}"
  }
}

