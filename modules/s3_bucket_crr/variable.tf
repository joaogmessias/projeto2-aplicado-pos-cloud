variable "source_bucket_name" {
  type        = string
  description = "Nome do bucket de origem"
}

variable "replica_bucket_name" {
  type        = string
  description = "Nome do bucket de destino"
}

variable "source_region" {
  type        = string
  description = "Região do bucket de origem"
}

variable "replica_region" {
  type        = string
  description = "Região do bucket de destino"
}