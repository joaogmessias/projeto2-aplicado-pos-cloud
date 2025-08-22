module "s3_bucket_crr" {
  source              = "./modules/s3-bucket-crr"

  source_bucket_name  = "terraform-techdev"
  replica_bucket_name = "terraform-techdev-replica"
  source_region       = "sa-east-1"
  replica_region      = "us-east-1"
}