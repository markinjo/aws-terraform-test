#Kreiranje EBS voluma

resource "aws_ebs_volume" "example_volume" {
  availability_zone = "eu-central-1a" # Izaberite željenu AWS zonu
  size              = 15           # Velicina volumena u GB
  type              = "gp2"        # Tip volumena (General Purpose SSD)
  tags = {
    Name = "Terr-a EBS Volume"
  }
}
