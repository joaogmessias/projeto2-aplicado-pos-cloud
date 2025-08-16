variable "instance_name" {
  description = "Nome da instância"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Chave SSH existente"
  type        = string
}

variable "region" {
  description = "Região da AWS"
  type        = string
}