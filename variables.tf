variable "instance_type" {
  description = "EC2 Instnace Type"
  type        = string
  default     = "t2.micro"
}

variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type        = string
  default     = "ec2-kljuc"
}
