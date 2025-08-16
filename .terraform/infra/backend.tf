terraform {
  backend "s3" {
    bucket         = "terraform-techdev"      # bucket que você já tem
    key            = "ec2/terraform.tfstate"  # caminho do state
    region         = "sa-east-1"
    dynamodb_table = "terraform-locks"        # crie a tabela antes
    encrypt        = true
  }
}
