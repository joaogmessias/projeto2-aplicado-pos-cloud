module "ec2" {
  source = "./modules/ec2"

  instance_name = var.ec2_instance_name
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
  region        = var.aws_region
}  

module "s3_bucket_crr" {
  source              = "./modules/s3_bucket_crr"

  source_bucket_name  = "terraform-techdev"
  replica_bucket_name = "terraform-techdev-replica"
  source_region       = "sa-east-1"
  replica_region      = "us-east-1"
}


