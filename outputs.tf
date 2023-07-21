output "Publik_adresa_EC2" {
  description = "Publik adresa je"
  value       = aws_instance.myec2vm.public_ip
}
