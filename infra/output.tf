output "ec2_public_ip" {
  description = "IP público da instância EC2"
  value       = module.ec2.public_ip
}

output "ec2_instance_id" {
  description = "ID da instância criada"
  value       = module.ec2.instance_id
}

