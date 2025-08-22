terraform {
  backend "s3" {
    bucket         = "terraform-techdev"      # bucket 
    key            = "ec2/terraform.tfstate"  # caminho do state
    region         = "sa-east-1"
    dynamodb_table = "terraform-locks"        
    encrypt        = true
  }
}
