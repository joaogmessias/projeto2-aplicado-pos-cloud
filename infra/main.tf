module "ec2" {
  source = "./modules/ec2"

  instance_name = var.ec2_instance_name
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name
  region        = var.aws_region
}

