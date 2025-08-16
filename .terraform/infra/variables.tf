variable "aws_region" {
  description = "Região AWS"
  type        = string
}

variable "ec2_instance_name" {
  description = "Nome da instância EC2"
  type        = string
  default     = "techdev-ec2"
}

variable "ec2_key_name" {
  description = "Nome da chave SSH existente"
  type        = string
}

variable "ec2_instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t2.micro"
}

