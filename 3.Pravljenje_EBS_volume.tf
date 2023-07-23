#Kreiranje EBS voluma

resource "aws_ebs_volume" "example_volume" {
  availability_zone = "eu-central-1b" # Izaberite željenu AWS zonu
  size              = 15              # Velicina volumena u GB
  type              = "gp2"           # Tip volumena (General Purpose SSD)
  tags = {
    Name = "Terr-a EBS Volume"
  }
}

#Dodavanje EBS voluma EC2 instanci 
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example_volume.id
  instance_id = aws_instance.myec2vm.id
}
